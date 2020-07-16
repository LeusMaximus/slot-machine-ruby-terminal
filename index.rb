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
  prize = -money if [x, y, z].all?(0)

  # 111
  prize = 10 if [x, y, z].all?(1)

  # 222
  prize = 20 if [x, y, z].all?(2)

  # 333
  prize = 30 if [x, y, z].all?(3)

  # 444
  prize = 40 if [x, y, z].all?(4)

  # 555
  prize = 50 if [x, y, z].all?(5)

  if prize >= 0
    puts "You have earned #{prize} dollars."
  else
    puts "You lost #{prize} dollars."
  end

  money += prize

  puts "Balance: #{money} dollars."
end
