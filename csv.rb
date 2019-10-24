require 'csv'

rows = CSV.read('purchase_and_sale.csv')
puts rows

# Add a new column to the CSV and print it to another file
# Column: Day
# Data: Day of the week based on the timestamp
