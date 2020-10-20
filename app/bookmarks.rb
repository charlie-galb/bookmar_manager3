require 'pg'
class Bookmarks
  def self.all
    conn = PG.connect( dbname: 'bookmark_manager')
    database = conn.exec("SELECT * FROM bookmarks")
    database.map { |bookmark| bookmark['url']}
 end
end
