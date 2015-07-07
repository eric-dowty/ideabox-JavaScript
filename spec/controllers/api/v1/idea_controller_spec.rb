require 'rails_helper'
require 'json'

RSpec.describe Api::V1::IdeaController, type: :controller do

  let!(:quality) { create(:quality) }
  let!(:idea) { create(:idea) }

  describe "GET #index" do
    it "returns json idea information" do
      get :index, format: :json
      data = JSON.parse(response.body, symbolize_names: true)
      count = Idea.count
      expect(data.count).to eq(count)
      expect(data.last.class).to eq(Hash)
    end
  end

  describe "GET #show" do
    it "returns json idea information for single idea" do
      id = Idea.last.id
      get :show, format: :json, id: id
      data = JSON.parse(response.body, symbolize_names: true)
      expect(data[:title]).to eq("first idea")
      expect(data[:body]).to eq("this is a badass idea!")
    end
  end

  describe "PUT #update" do
    it "updates idea information for an idea" do
      id = Idea.last.id
      idea_params = { title: "different idea", body: "this is different", quality_id: quality.id }
      put :update, format: :json, id: id, idea: idea_params
      data = Idea.find(id)
      expect(data[:title]).to eq("different idea")
      expect(data[:body]).to eq("this is different")
    end
  end

  describe "POST #create" do
    it "creates a new idea" do
      original_count = Idea.count
      idea_params = { title: "new idea", body: "this is new", quality_id: quality.id }
      post :create, format: :json, idea: idea_params
      expect(original_count).to eq(Idea.count-1)
      data = Idea.last
      expect(data[:title]).to eq("new idea")
      expect(data[:body]).to eq("this is new")
    end
  end

  describe "DELETE #destroy" do
    it "destroys an idea" do
      original_count = Idea.count
      id = idea.id
      delete :destroy, format: :json, id: id
      expect(original_count).to eq(Idea.count+1)      
    end
  end

end