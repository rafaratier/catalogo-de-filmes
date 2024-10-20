require 'rails_helper'

describe 'User accesses the genres page' do
  it 'and can navigate to the page for adding a new movie genre' do
    visit genres_path
    click_link 'New Genre'
    expect(page).to have_current_path('/genres/new')
  end
end
