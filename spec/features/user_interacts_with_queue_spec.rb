require 'spec_helper'

feature 'User interacts with the queue' do
  scenario 'user add and reorders videos in the queue' do
    
    comedies = Fabricate(:category)
    monk = Fabricate(:video, title: 'Monk', category: comedies)
    family_guy = Fabricate(:video, title: 'Family Guy', category: comedies)
    south_park = Fabricate(:video, title: 'South Park', category: comedies)
    futurama = Fabricate(:video, title: 'Futurama', category: comedies)

    sign_in
    find("a[href='/videos/#{family_guy.id}']").click
    page.should have_content(family_guy.title)

    click_link '+ My Queue'
    page.should have_content(family_guy.title)

    visit video_path(family_guy)
    page.should_not have_content "+ My Queue"

    visit home_path
    find("a[href='/videos/#{south_park.id}']").click
    click_link '+ My Queue'
    visit home_path
    find("a[href='/videos/#{futurama.id}']").click
    click_link '+ My Queue'

    find("input[data-video-id='#{futurama.id}']").set(3)
    find("input[data-video-id='#{family_guy.id}']").set(1)
    find("input[data-video-id='#{south_park.id}']").set(3)
    

    click_link 'Update Instant Queue'

    expect("input[data-video-id='#{south_park.id}']").to eq("2")
    expect("input[data-video-id='#{futurama.id}']").to eq("3")
    expect("input[data-video-id='#{family_guy.id}']").to eq("1")

    
    
  end
end
