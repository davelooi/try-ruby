require 'csv'
require 'time'

rows = CSV.read('purchase_and_sale.csv', headers: true)
puts rows[0]['transaction_uuid']

rows[0..9].each do |row|
	transaction_timestamp = row['transaction_timestamp']
	puts "transaction_timestamp=#{transaction_timestamp}"
	timestamp = Time.parse(transaction_timestamp)
	puts "timestamp=#{timestamp}"
	puts "year=#{timestamp.year}"
end

# Add a new column to the CSV and print it to another file
# Column: Day
# Data: Day of the week based on the timestamp
