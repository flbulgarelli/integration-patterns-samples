puts "Enviando ping!"
File.write("ping", '')
until File.exist? "pong"
  sleep 0.5
end
File.delete "pong"
puts "Pong recibido!"



