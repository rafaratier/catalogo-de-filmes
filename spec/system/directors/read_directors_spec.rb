require 'rails_helper'

describe 'User accesses the directors page' do
  it 'and can navigate to the page for adding a new movie director' do
    visit directors_path
    click_link 'New Director'
    expect(page).to have_current_path(new_director_path)
  end
end
