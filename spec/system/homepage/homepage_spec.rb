require 'rails_helper'

describe 'User accesses the home page' do
  it 'and can navigate to the page for viewing all the movies' do
    visit root_path
    click_link 'Movies'
    expect(page).to have_current_path('/movies')
  end

  it 'and can navigate to the page for viewing all the movie genres' do
    visit root_path
    click_link 'Genres'
    expect(page).to have_current_path('/genres')
  end

  it 'and can navigate to the page for viewing all the movie directors' do
    visit root_path
    click_link 'Directors'
    expect(page).to have_current_path('/directors')
  end
end
