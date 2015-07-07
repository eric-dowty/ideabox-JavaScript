require 'rails_helper'

RSpec.describe Idea, type: :model do

  let!(:quality) { create(:quality) }
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
    expect(idea.quality.description).to eq("genius")
  end

  it "returns the details of an idea" do
    idea.quality_id = quality.id
    details = Idea.details(idea)
    expect(details.title).to eq("first idea")
    expect(details.body).to eq("first idea")
    expect(details.title).to eq("this is a badass idea!")
    expect(details.quality).to eq("genius")
  end

end