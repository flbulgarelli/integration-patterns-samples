require 'sinatra'

post '/ping' do
  puts "Ping recibido!"

  if ENV['DELAY']
    puts "Simulando delay..."
    sleep ENV['DELAY']&.to_i
  end

  'pong'
end
