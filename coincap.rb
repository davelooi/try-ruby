# https://docs.coincap.io

require 'http'

puts "====EVERYTHING===="
response = HTTP.get('https://api.coincap.io/v2/markets')
data = JSON.parse(response.to_s)
puts JSON.pretty_generate(data) # => lots of data

# Filter by only BTC
puts "====BTC ONLY===="
response = HTTP.get('https://api.coincap.io/v2/markets?baseSymbol=BTC')
data = JSON.parse(response.to_s)
puts JSON.pretty_generate(data) # => still lots of data

# Filter by only AUD
puts "====BTC/AUD ONLY===="
