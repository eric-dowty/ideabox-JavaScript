require 'rails_helper'

RSpec.describe Quality, type: :model do

  let(:quality) { create(:quality) }

  it "is invalid without a description" do
    quality.description = nil
    expect(quality).to_not be_valid
  end

  it "is valid with a descripton" do
    expect(quality).to be_valid
  end

end