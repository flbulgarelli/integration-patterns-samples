require 'sqlite3'
db = SQLite3::Database.new "ping.db"
puts "Enviando ping!"
db.execute "insert into ping (req) values ('ping')"
db.close

  