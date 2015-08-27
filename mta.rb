resume = true
until resume == false
  #create hash of lines and stations
  mta = {
    :linen => ['ts','34','28','23','us','8'],
    :linel => ['8','6','us','3','1'],
    :line6 => ['gc','33','28','23','us','ap']
  }
  #this station letters array is used for error handing - see line 15
  line_letters = ['n','l','6']

  #get starting line
  print 'Select your starting line (l, n or 6): '
  start_line = gets.chomp.downcase

  #checking for errors in the start line gets prompt thing
  until line_letters.include? start_line
    puts #print an empty line
    print 'Yo man, plop in a valid line, you idiot (n, l or 6) :'
    start_line = gets.chomp.downcase
  end

  #assign the start line symbol varible
  if start_line == 'l'
    start_line_symbol = :linel
  elsif start_line == 'n'
    start_line_symbol = :linen
  else
    start_line_symbol = :line6
  end

  #print the available stations in the selected line and ask for a station
  print mta[start_line_symbol]
  puts #print an empty line
  print 'Select your starting station: '
  start = gets.chomp.downcase

  #error checking for invalid station selection
  until mta[start_line_symbol].include? start
    puts #print an empty line
    print "Dude, that station doesn't exist on that line.  Try again. "
    start = gets.chomp.downcase
  end

  #request for ending line
  print 'Select your ending line (l, n or 6): '
  end_line = gets.chomp

  #error handling for invalid lines
  until line_letters.include? end_line
    puts #print an empty line
    print 'No, that is not a line.  Type one of these :n, l or 6 '
    end_line = gets.chomp.downcase
  end

  #assign the end line symbol varible
  if end_line == 'l'
    end_line_symbol = :linel
  elsif end_line == 'n'
    end_line_symbol = :linen
  else
    end_line_symbol = :line6
  end

  #print the available stations in the selected line and ask for a station
  print mta[end_line_symbol]
  puts #print an empty line
  print 'select an end station: '
  the_end = gets.chomp

  #error checking for invalid station selection
  until mta[end_line_symbol].include? the_end
    puts #print an empty line
    print "Dude, that station doesn't exist on that line.  Try again. "
    the_end = gets.chomp.downcase
  end

  #creating variables for start and end stations, as well as for Union Square on the start and end lines
  start_index = mta[start_line_symbol].index(start)
  end_index = mta[end_line_symbol].index(the_end)
  start_us_index = mta[start_line_symbol].index('us')
  end_us_index = mta[end_line_symbol].index('us')

  puts #print an empty line
  # puts 'start line = ' + start_line.to_s
  # puts 'start station = ' + start.to_s
  # puts 'end line = ' + end_line.to_s
  # puts 'end station = ' + the_end.to_s
  # puts 'start station index = ' + start_index.to_s
  # puts 'end station index = ' + end_index.to_s

  #decides if there are one or two lines, and applies the appropriate equation
  if start_line == end_line
    stops = (start_index - end_index).abs
  else
    stops = (start_index - start_us_index).abs + (end_us_index - end_index).abs
  end

  #print the answer
  puts 'Your journey is ' + stops.to_s + ' stops'

  #ask if you want to go again or quit
  puts #print an empty line
  print "(a)gain or (q)uit?"
  quitter = gets.chomp.downcase
  if quitter == 'q'
    resume = false
  end
end


















