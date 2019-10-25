require 'http'

response = HTTP.get('https://data.exchange.coinjar.com/products/BTCAUD/ticker')
puts "====response===="
puts response
puts "====response bid===="
puts response['bid']

data = JSON.parse(response.to_s)
puts "====data===="
puts data
puts "====data bid===="
puts data['bid']

puts "====pretty data===="
puts JSON.pretty_generate(data)

while(1) do
	response = HTTP.get('https://data.exchange.coinjar.com/products/BTCAUD/ticker')
	data = JSON.parse(response.to_s)
	puts data['current_time']
	sleep 1
end
