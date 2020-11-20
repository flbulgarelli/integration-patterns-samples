require "sqlite3"
db = SQLite3::Database.new "ping.db"
db.execute <<-SQL
  create table ping (
    req char(4),
    res char(4)
  );
SQL
db.close
