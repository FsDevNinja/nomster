require "rails_helper"

RSpec.describe PlacesController, type: :controller do
  describe "places#index" do
    it "should return success on load" do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
  
  describe "places#new" do
    it "should show form on load" do
      user = FactoryGirl.create(:user)
      sign_in user
      get :new
      
      expect(response).to have_http_status(:success)
    end
  end
end
