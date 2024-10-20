require 'rails_helper'

describe 'User accesses the New Genre page' do
  context 'with valid data' do
    it 'can create a new movie genre' do
      visit new_genre_path

      fill_in 'Name', with: 'Drama'
      click_button 'Create Genre'

      expect(page).to have_content('Genre successfully created!')
      expect(page).to have_current_path(genres_path)
    end
  end

  context 'with invalid data' do
    it 'can not create a new movie genre with blank name' do
      visit new_genre_path

      fill_in 'Name', with: ''
      click_button 'Create Genre'

      expect(page).to have_content('Genre not created!')
      expect(page).to have_content("Name can't be blank")
      expect(page).to have_current_path(genres_path)
    end

    it 'can not create a new movie genre that already exists' do
      Genre.create(name: 'Drama')
      visit new_genre_path

      fill_in 'Name', with: 'Drama'
      click_button 'Create Genre'

      expect(page).to have_content('Name has already been taken')
      expect(page).to have_content('Genre not created!')
      expect(page).to have_current_path(genres_path)
    end
  end
end
