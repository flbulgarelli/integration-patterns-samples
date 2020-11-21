loop do
  sleep 0.5
  if File.exist? "ping"
    puts "Recibiendo ping!"
    File.delete "ping"

    if ENV['DELAY']
      print "Simulando delay..."
      sleep ENV['DELAY']&.to_i
    end

    File.write "pong", ''
    puts "Pong enviado!"
  end
end
