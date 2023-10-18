require 'sqlite3'

begin
  db = SQLite3::Database.new "ping.db"
  puts "Enviando ping!"
  db.execute "insert into ping (req) values ('ping')"
rescue SQLite3::SQLException
  puts "Error: Don't forget to run setup.rb first"
ensure
  db.close
end
