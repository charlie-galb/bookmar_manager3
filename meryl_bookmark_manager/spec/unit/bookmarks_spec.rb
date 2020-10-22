require_relative '../../app/bookmarks.rb'

describe Bookmarks do
  describe '.all' do
    it 'returns the bookmarks in the array' do
      connection = PG.connect(dbname: 'bookmark_manager_test')

      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.makersacademy.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://google.com');")
      connection.exec("INSERT INTO bookmarks (url) VALUES ('http://www.destroyallsoftware.com');")
    
      bookmarks = Bookmarks.all
      expect(bookmarks).to include('http://www.makersacademy.com')
      expect(bookmarks).to include('http://www.destroyallsoftware.com')
      expect(bookmarks).to include('http://google.com')    end
  end
end
