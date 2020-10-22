require 'pg'

describe Bookmarks do
  describe '#all' do
    it 'contains an array of hyperlinks' do
      print 'setting up test database'
      Bookmarks.create(url: 'http://www.makersacademy.com', title: 'Makers')
      Bookmarks.create(url: 'http://www.google.com', title: 'Google')
      Bookmarks.create(url: 'http://www.destroyallsoftware.com', title: 'Destroy All Software')

      bookmarks = Bookmarks.all

      expect(bookmarks).to include("<a href='http://www.makersacademy.com'>'Makers'</a>")
      expect(bookmarks).to include("<a href='http://www.google.com'>'Google'</a>")
      expect(bookmarks).to include("<a href='http://www.destroyallsoftware.com'>'Destroy All Software'</a>")
    end
  end

  describe '#create' do
    it 'creates a new bookmark' do
      Bookmarks.create(url: 'http://www.testbookmark.com', title: "Test Bookmarks")
      expect(Bookmarks.all).to include "<a href='http://www.testbookmark.com'>'Test Bookmarks'</a>"
    end
  end
end
