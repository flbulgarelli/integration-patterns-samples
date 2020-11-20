require 'bunny'

conn = Bunny.new
conn.start

channel = conn.create_channel
pings  = channel.queue("ping")
pongs  = channel.queue("pong")



pings.subscribe(block: true) do |delivery_info, properties, payload|
  puts "Recibiendo #{payload}, con metadata #{properties.inspect}"

  if ENV['DELAY']
    print "Simulando delay..."
    sleep ENV['DELAY']&.to_i
  end

  pongs.publish("pong")
  puts "Pong enviado!"
end

conn.stop
