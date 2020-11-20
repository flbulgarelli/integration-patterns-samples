require 'bunny'

conn = Bunny.new
conn.start

channel = conn.create_channel

pings  = channel.queue("ping")
pongs  = channel.queue("pong")

puts "Enviando ping!"
pings.publish("ping")

pongs.subscribe do |delivery_info, properties, payload|
  puts "Pong recibido!"
end


conn.stop
