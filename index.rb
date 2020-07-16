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

  case [x, y, z].to_s
  when '[0, 0, 0]'
    prize = -money
  when '[1, 1, 1]'
    prize = 10
  when '[2, 2, 2]'
    prize = 20
  when '[3, 3, 3]'
    prize = 30
  when '[4, 4, 4]'
    prize = 40
  when '[5, 5, 5]'
    prize = 50
  else
    prize = -1
  end

  if prize >= 0
    puts "You have earned #{prize} dollars."
  else
    puts "You lost #{prize} dollars."
  end

  money += prize

  puts "Balance: #{money} dollars."
end
