require 'rails_helper'
require 'json'

RSpec.describe Api::V1::QualityController, type: :controller do

  let!(:quality) { create(:quality) }

  describe "GET #index" do
    it "returns json idea information" do
      get :index, format: :json
      data = JSON.parse(response.body, symbolize_names: true)
      count = Quality.count
      expect(data.count).to eq(count)
      expect(data.last.class).to eq(Hash)
    end
  end

end