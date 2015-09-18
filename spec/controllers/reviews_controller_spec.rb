require 'spec_helper'

describe ReviewsController  do 
  describe "POST create" do
    context "with authenticated users" do

      let(:current_user) { Fabricate(:user) }
      before { session[:user_id] = current_user.id }

      context "with valid inputs" do
        it "redirects to the video show page" do
          video = Fabricate(:video)
          post :create, review: Fabricate.attributes_for(:review), video_id: video_id
          expect(response).to redirect_to video

        end

         it "creates a review" do
            video = Fabricate(:video)
            post :create, review: Fabricate.attributes_for(:review), video_id: video.id
            expect(Review.count).to eq(1)
        end
          it "creates a review associated with the video" do
            video = Fabricate(:video)
            post :create, review: Fabricate.attributes_for(:review), video_id: video.id
            expect(Review.count).to eq(video)
          end
          it "creates a review associated with the signed in user" do
            video = Fabricate(:video)
            post :create, review: Fabricate.attributes_for(:review), video_id: video.id
            expect(Review.first.user).to eq(current_user)
          end
          
      end
      context "with invalid inputs" 
        it "does not create a review" do
          video = Fabricate(:video)
          post :create, review: {rating: 4}, video_id: video.id
          expect(Review.count).to eq(0)
        end
        it "renders the videos/show template"
        it "sets @video"
        it "sets @reviews"

    end
  end
  
end
  
