#!/usr/bin/env ruby
log_entry = ARGV[0]

# Extract the sender, receiver, and flags using regex patterns
sender = log_entry.scan(/\[from:(.*?)\]/).flatten.first
receiver = log_entry.scan(/\[to:(.*?)\]/).flatten.first
flags = log_entry.scan(/\[flags:(.*?)\]/).flatten.first

# Output the result in the required format
puts "#{sender},#{receiver},#{flags}"
