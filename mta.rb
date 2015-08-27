mta = {
  :linen => ['ts','34','28-n','23-n','us','8n'],
  :linel => ['8-l','6','us','3','1'],
  :line6 => ['gc','33','28-6','23-6','us','ap']
}

print 'Select your starting line (l, n or 6): '
start_line = gets.chomp

if start_line == 'l'
  start_line_symbol = :linel
elsif start_line == 'n'
  start_line_symbol = :linen
else
  start_line_symbol = :line6
end

print mta[start_line_symbol]

puts
print 'Select your starting station: '
start = gets.chomp


print 'Select your ending line (l, n or 6): '
end_line = gets.chomp

if end_line == 'l'
  end_line_symbol = :linel
elsif end_line == 'n'
  end_line_symbol = :linen
else
  end_line_symbol = :line6
end

print mta[end_line_symbol]
puts
print 'select an end station: '
the_end = gets.chomp

start_index = mta[start_line_symbol].index(start)
end_index = mta[end_line_symbol].index(the_end)

puts 'start line = ' + start_line.to_s
puts 'start station = ' + start.to_s
puts 'end line = ' + end_line.to_s
puts 'end station = ' + the_end.to_s
puts 'start station index = ' + start_index.to_s
puts 'end station index = ' + end_index.to_s

stops = (mta[start_line_symbol].index(start) - mta[end_line_symbol].index(the_end)).abs
puts stops


















