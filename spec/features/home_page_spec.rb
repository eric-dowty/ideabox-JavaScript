require 'rails_helper'

RSpec.feature "homepage" do

  scenario "user visit homepage" do
    visit "/"
    expect(page).to have_content("The Greatest Idea Box of All Time")
    expect(page).to have_content("Ideas")
    expect(page).to have_content("New Idea")
    expect(page).to have_css('input[type="text"]')
  end

end