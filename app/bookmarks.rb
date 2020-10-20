require 'pg'

class Bookmarks

  def self.all
    if ENV['ENVIRONMENT'] == 'test'
      conn = PG.connect(dbname: 'bookmark_manager_test')
    else
      conn = PG.connect(dbname: 'bookmark_manager')
    end

    database = conn.exec("SELECT * FROM bookmarks")
    database.map { |bookmark| bookmark['url']}
 end
end
