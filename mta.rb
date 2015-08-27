mta = {
  :linen => ['ts','34','28-n','23-n','us','8n'],
  :linel => ['8-l','6','us','3','1'],
  :line6 => ['gc','33','28-6','23-6','us','ap']
}

print 'Select your starting line (l, n or 6): '
start_line = gets.chomp

if start_line == 'l'
  start_line = :linel
elsif start_line == 'n'
  start_line = :linen
else
  start_line = :line6
end

print mta[start_line]

puts
print 'Select your starting station: '
start = gets.chomp
puts start

print 'Select your ending line (l, n or 6): '
end_line = gets.chomp

if end_line == 'l'
  end_line = :linel
elsif end_line == 'n'
  end_line = :linen
else
  end_line = :line6
end

print mta[end_line]
puts
print 'select an end station: '
the_end = gets.chomp

puts mta[start_line].index(start)
puts mta[end_line].index(the_end)

stops = (mta[start_line].index(start) - mta[end_line].index(the_end)).abs
puts stops


















