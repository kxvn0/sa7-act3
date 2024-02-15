ROOM_POINTS = [5, 10, 15]


total_points = 0

puts 'Welcome to the Adventure Game!'
puts "You have a total of #{total_points} points."


loop do
  print "Choose a room (1-3) to enter or 'exit' to exit the game: "
  choice = gets.chomp.downcase



  break if choice == 'exit'

  room_number = choice.to_i

  if room_number >= 1 && room_number <= 3
    total_points += ROOM_POINTS[room_number -1]
    puts "You entered #{room_number} and earned #{ROOM_POINTS[room_number-1]} points."
  else
    puts "Invalid choice. Please choose a room number between 1, 2, or 3."
  end
end
