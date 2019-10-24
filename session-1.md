# TRY RUBY

## Before we start
- You might already have ruby installed
- In the terminal:
```
❯ ruby -v
ruby 2.6.4p104 (2019-08-28 revision 67798) [x86_64-darwin18]
```

- If you don't have ruby: https://www.ruby-lang.org/en/documentation/installation/#homebrew

## Let's start

### Ruby Interactive Console
- Quickest way to write (and get the output) ruby code
- In the terminal:
```ruby
❯ irb
irb(main):001:0> 1 + 2
=> 3
irb(main):002:0> "Hello world"
=> "Hello world"
irb(main):003:0> "Hello " * 3
=> "Hello Hello Hello "
```

- More: https://ruby.github.io/TryRuby/

### Plain Ruby Script
- In code editor:
```ruby
"Hello World"

puts "Hello Ruby"

puts 1 + 2

my_name = 'David'

puts "Hello #{my_name}"

(1..10).each do |n|
  puts "n little indian boys"
end
```

## Let's make it interesting

### API
- What is it?
- How to use it?
  - Get ticker data from coinjar exchange data
	- https://data.exchange.coinjar.com/products/BTCAUD/ticker
	- In the terminal:
```
gem install http
```
	- In the console:
```ruby
irb(main):002:0> require 'http'
=> true
irb(main):004:0> response = HTTP.get('https://data.exchange.coinjar.com/products/BTCAUD/ticker')
=> #<HTTP::Response/1.1 200 OK {"Content-Type"=>"application/json; charset=utf-8", "Content-Length"=>"275", "Connection"=>"close", "Date"=>"Thu, 24 Oct 2019 05:56:19 GMT", "Server"=>"Cowboy", "Cache-Control"=>"max-age=0, private, must-revalidate", "X-Request-Id"=>"FdB_nHRWZfLlxiUCGyJB", "Access-Control-Allow-Origin"=>"*", "Access-Control-Expose-Headers"=>"", "Access-Control-Allow-Credentials"=>"true", "X-Cache"=>"Miss from cloudfront", "Via"=>"1.1 d398d998fe529d4555e659e3cb967b47.cloudfront.net (CloudFront)", "X-Amz-Cf-Pop"=>"MEL50", "X-Amz-Cf-Id"=>"FZixeuvt0vw5X8gQ0K6bnrkG3DvBoZ9yyV4z983-F0y6VMOgf0pL5A=="}>
irb(main):005:0> response.to_s
=> "{\"volume_24h\":\"98.54300000\",\"volume\":\"19.70100000\",\"transition_time\":\"2019-10-24T07:50:00Z\",\"status\":\"continuous\",\"session\":17890,\"prev_close\":\"10960.00000000\",\"last\":\"10930.00000000\",\"current_time\":\"2019-10-24T05:56:19.896630Z\",\"bid\":\"10920.00000000\",\"ask\":\"10930.00000000\"}"
irb(main):006:0> data = JSON.parse(response.to_s)
=> {"volume_24h"=>"98.54300000", "volume"=>"19.70100000", "transition_time"=>"2019-10-24T07:50:00Z", "status"=>"continuous", "session"=>17890, "prev_close"=>"10960.00000000", "last"=>"10930.00000000", "current_time"=>"2019-10-24T05:56:19.896630Z", "bid"=>"10920.00000000", "ask"=>"10930.00000000"}
irb(main):012:0> puts JSON.pretty_generate(data)
{
  "volume_24h": "98.54300000",
  "volume": "19.70100000",
  "transition_time": "2019-10-24T07:50:00Z",
  "status": "continuous",
  "session": 17890,
  "prev_close": "10960.00000000",
  "last": "10930.00000000",
  "current_time": "2019-10-24T05:56:19.896630Z",
  "bid": "10920.00000000",
  "ask": "10930.00000000"
}
=> nil
irb(main):013:0> JSON.parse(HTTP.get('https://data.exchange.coinjar.com/products/BTCAUD/ticker'))['bid']
=> "10920.00000000"
```
- How to make one?
  - It's complicated

### CSV processing
- Given a CSV file `purchase_and_sale.csv`
- Get all the `buy` rows
- Convert AUD to USD
- Filter the rows from year 2018, and output it into a new file `2018_purchase_and_sale.csv`
