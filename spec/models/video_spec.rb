require 'spec_helper'

describe Video do 
  it { should belong_to(:category)} 
  it { should validate_presence_of(:title)}
  it { should validate_presence_of(:description)}

  describe "search_by_title" do
    it "returns an empty array if there is no match" do
      futurama = Video.create(title: 'Futurama', 
      description: 'show in the future')
      back_to_the_future = Video.create(title: 'Back to The Future', 
      description: 'show in the past')
      expect(Video.search_by_title(title: 'hello')).to eq([])
    end
    it "returns a array of one video for an exact match" do
      futurama = Video.create(title: 'Futurama', 
      description: 'show in the future')
      back_to_the_future = Video.create(title: 'Back to The Future', 
      description: 'show in the past')
      expect(Video.search_by_title(title: 'Back to The Future')).to eq([back_to_the_future])
    end

    it "returns a array of one video for a partial match"
    it "returns a array of all matches ordered by created_at"
  end
end
