require 'spec_helper'

feature 'User signs in' do 
  scenario 'with existing username' do
    alice= Fabricate(:user)
    sign_in(alice)
    page.should have_content alice.full_name
  end
end
