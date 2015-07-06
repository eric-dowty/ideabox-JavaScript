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

end