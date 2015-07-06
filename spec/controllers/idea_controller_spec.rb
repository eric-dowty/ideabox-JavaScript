require 'rails_helper'

RSpec.describe IdeaController, type: :controller do

  let!(:quality) { create(:quality) }
  let!(:idea) { create(:idea) }

  describe "GET #home" do
    it "returns http success for home" do
      get :home
      expect(response).to have_http_status(:success)
    end
  end

end