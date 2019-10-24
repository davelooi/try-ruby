require 'http'

response = HTTP.get('https://dog.ceo/api/breeds/image/random')
puts "response=#{response.to_s}"

data = JSON.parse(response.to_s)
puts "data=#{data}"

response = HTTP.get('https://dog.ceo/api/breeds/list/all')
puts "response=#{response.to_s}"

data = JSON.parse(response.to_s)
puts "data=#{data}"

# Get a random image from a specific breed

# Get more than 1 random images from a specific breed
