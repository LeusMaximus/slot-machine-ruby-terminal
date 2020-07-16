puts 'Welcome to Slot Machine!'
print 'How old are you: '
age = gets.to_i

if age < 18
  puts 'You are very young.'
  exit
end

print 'Do you want to play? (Y/N) '
play = gets.strip.upcase

if play != 'Y'
  exit
end

money = 100

puts "Ok let's play."
puts "Your starting balance: #{money} dollars."
puts

while true
  print "Press enter to start machine... "
  gets

  prize = 0

  x = rand(0..5)
  y = rand(0..5)
  z = rand(0..5)

  puts "The combination: #{x}-#{y}-#{z}"

  # 000
  if x == 0 && y == 0 && z == 0
    prize = -money
  end

  # 111
  if x == 1 && y == 1 && z == 1
    prize = 10
  end

  # 222
  if x == 2 && y == 2 && z == 2
    prize = 20
  end

  # 333
  if x == 3 && y == 3 && z == 3
    prize = 30
  end

  # 444
  if x == 4 && y == 4 && z == 4
    prize = 40
  end

  # 555
  if x == 5 && y == 5 && z == 5
    prize = 50
  end

  money += prize

  if prize >= 0
    puts "You have earned #{prize} dollars."
  else
    puts "You lost #{prize} dollars."
  end

  puts "Balance: #{money} dollars."
end
