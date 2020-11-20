require 'rest-client'

puts "Enviando ping!"
RestClient.post 'http://localhost:4567/ping', mensaje: 'ping'

puts "Ping enviado!"
