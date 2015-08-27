mta = {
  :linen => ['ts','34','28-n','23-n','us','8n'],
  :linel => ['8-l','6','us','3','1'],
  :line6 => ['gc','33','28-6','23-6','us','ap']
}

print 'select a line (l, n or 6): '
line = gets.chomp

if line == 'l'
  line = :linel
elsif line == 'n'
  line = :linen
else
  line = :line6
end

print mta[line]

puts
print 'select a station: '
start = gets.chomp

puts start

print 'select an end station: '
the_end = gets.chomp

puts mta[line].index(start)
puts mta[line].index(the_end)

stops = (mta[line].index(start) - mta[line].index(the_end)).abs
puts stops
