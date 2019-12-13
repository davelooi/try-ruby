# TRY RUBY

## Before we start
- Checkout https://github.com/davelooi/try-ruby

### Install ruby
- Install homebrew https://brew.sh/
- Install ruby https://www.ruby-lang.org/en/documentation/installation/#homebrew

### Install VS Code
- https://code.visualstudio.com/docs/setup/mac#_installation

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
irb(main):004:0> response = HTTP.get('https://data.exchange.coinjar.com/products/BTCAUD/ticker')
irb(main):005:0> response.to_s
irb(main):006:0> data = JSON.parse(response.to_s)
irb(main):012:0> puts JSON.pretty_generate(data)
irb(main):013:0> JSON.parse(HTTP.get('https://data.exchange.coinjar.com/products/BTCAUD/ticker'))['bid']
```

- Run it all in a script
	- exchange.rb
	- coincap.rb
	- dog.rb

- Homeworks:
	- Fetch 10 times
	- Delay 1 second between fetch

### How to make one?
  - It's complicated

### CSV processing
- Given a CSV file `purchase_and_sale.csv`
- Sum all the amount
- Filter the rows from year 2018, and output it into a new file `2018_purchase_and_sale.csv`
- Add a new column to the CSV and print it to another file `purchase_and_sale_extra_column.csv`
	- Column: Day
	- Data: Day of the week based on the timestamp
