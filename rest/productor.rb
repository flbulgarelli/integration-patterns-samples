require 'rest-client'

puts "Enviando ping!"
resultado = RestClient.post 'http://localhost:4567/ping', mensaje: 'ping'

puts "Ping enviado!"
puts "Pong recibido: #{resultado}"
