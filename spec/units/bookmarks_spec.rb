require 'pg'

describe Bookmarks do
  describe '#all' do
    it 'displays a list bookmarks' do
      print 'setting up test database'
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec("INSERT INTO bookmarks (url, Title) VALUES ('http://www.makersacademy.com', 'Makers');")
      connection.exec("INSERT INTO bookmarks (url, Title) VALUES ('http://www.google.com', 'Google');")
      connection.exec("INSERT INTO bookmarks (url, Title) VALUES ('http://www.destroyallsoftware.com', 'Destroy All Software');")

      bookmarks = Bookmarks.all

      expect(bookmarks).to include('Makers')
      expect(bookmarks).to include('Destroy All Software')
      expect(bookmarks).to include('Google')
    end
  end

  describe '#create' do
    it 'creates a new bookmark' do
      Bookmarks.create(url: 'http://www.testbookmark.com', title: "Test Bookmarks")
      expect(Bookmarks.all).to include 'Test Bookmarks'
    end
  end
end
