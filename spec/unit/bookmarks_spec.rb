require_relative '../../app/bookmarks.rb'

describe Bookmarks do
  describe '#bookmarks' do
    it 'returns the bookmarks in the array' do

      expect(subject.bookmarks).to eq ["http://www.makersacademy.com","http://www.google.com"]
    end
  end
end
