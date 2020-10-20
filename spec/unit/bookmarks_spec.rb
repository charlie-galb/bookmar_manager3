require_relative '../../app/bookmarks.rb'

describe Bookmarks do
  describe '#bookmarks' do
    it 'returns the bookmarks in the array' do
      expect(Bookmarks.all).to eq ["http://www.makersacademy.com","http://google.com", "http://www.destroyallsoftware.com"]
    end
  end
end
