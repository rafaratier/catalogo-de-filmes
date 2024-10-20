require 'rails_helper'

describe "User access the Home Page" do
  it "and can navigate to a page for adding a new movie" do
    visit root_path
    click_link "add a new Movie"
    expect(page).to have_current_path('/movies/new')
  end

  it "and can navigate to a page for adding a new movie genre" do
    visit root_path
    click_link "add a new Genre"
    expect(page).to have_current_path('/genres/new')
  end

  it "and can navigate to a page for adding a new director" do
    visit root_path
    click_link "add a new Director"
    expect(page).to have_current_path('/directors/new')
  end
end
