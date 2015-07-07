require 'rails_helper'

RSpec.describe Idea, type: :model do

  let!(:quality) { create(:swill) }
  let(:idea) { create(:idea) }

  it "is valid with a title and description" do
    expect(idea).to be_valid
  end

  it "is invalid without a title" do
    idea.title = nil
    expect(idea).to_not be_valid
  end

  it "is invalid without a body" do
    idea.body = nil
    expect(idea).to_not be_valid
  end

  it "has one quality" do
    idea.quality_id = quality.id
    expect(idea.quality.description).to eq("swill")
  end

  it "returns the details of an idea" do
    idea.quality_id = quality.id
    details = idea.full_details
    expect(details.title).to eq("first idea")
    expect(details.body).to eq("this is a badass idea!")
    expect(details.id).to eq(idea.id.to_s)
    expect(details.quality).to eq("swill")
  end

  it "returns the details of all ideas" do
    Idea.destroy_all
    idea
    another_idea = Idea.create(title: "two", body: "a second idea")    
    details = Idea.all_with_details
    expect(details.count).to eq(2)
  end

end