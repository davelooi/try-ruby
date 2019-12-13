require 'http'

my_password = 'password'

hashed_password = Digest::SHA1.hexdigest(my_password).upcase

prefix = hashed_password[0..4]
suffix = hashed_password[5..-1]

puts "===hashed_password=#{hashed_password}"
puts "===prefix=#{prefix}"
puts "===suffix=#{suffix}"

response = HTTP.get("https://api.pwnedpasswords.com/range/#{prefix}")
puts response

have_i_been_pwned = response.to_s.include?(suffix)

puts "I #{have_i_been_pwned ? 'have' : 'have not'} been pawned."