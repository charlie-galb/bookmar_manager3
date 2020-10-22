require 'pg'

class Bookmarks

  if ENV['ENVIRONMENT'] == 'test'
    @connection = PG.connect :dbname => 'bookmark_manager_test'
  else
    @connection = PG.connect :dbname => 'bookmark_manager'
  end

  def self.all
    result = @connection.exec "SELECT * FROM bookmarks"
    result.map {|row| row = "<a href='#{row['url']}'>'#{row['title']}'</a>" }
  end

  def self.create(url:, title:)
    @connection.exec("INSERT INTO bookmarks (url, Title) VALUES('#{url}', '#{title}');")
  end


end
