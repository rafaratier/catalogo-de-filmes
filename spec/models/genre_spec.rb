require 'rails_helper'

describe Genre do
  describe '#valid?' do
    it 'false when name is empty' do
      new_genre = Genre.new(name: '')
      expect(new_genre.valid?).to eq false
    end

    it 'false when name length is less than 3' do
      new_genre = Genre.new(name: 'Dr')
      expect(new_genre.valid?).to eq false
    end

    it 'false when name length is more than 15' do
      new_genre = Genre.new(name: 'One big movie genre')
      expect(new_genre.valid?).to eq false
    end
  end
end
