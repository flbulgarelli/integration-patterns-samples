require 'sqlite3'
db = SQLite3::Database.new "ping.db"

loop
  sleep 0.5

  begin
    db.transaction
    pendientes = db.execute("select count(*) from ping where res is null")[0][0]

    if ENV['DELAY']
      print "Simulando delay..."
      sleep ENV['DELAY']&.to_i
    end

    if pendientes > 0
      puts "Enviando #{pendientes} pongs!"
      db.execute "update ping set res = 'pong' where res is null"
      puts "Pongs enviados!"
    end

    db.commit

  rescue
    db.rollback
    raise
  end
end

db.close
