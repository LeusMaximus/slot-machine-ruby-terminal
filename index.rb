puts 'Welcome to Slot Machine!'
print 'Please enter your age: '
age = gets.to_i

if age < 18
  puts 'Sorry, but you are very young for this game.'
  exit
end

print 'Do you want to play? (Y/N) '
play = gets.strip.upcase
puts

if play != 'Y'
  exit
end

money = 100

puts "Ok let's play."
puts "Your starting balance: #{money} dollars."
puts

values_range = 0..5

while true
  print "Press enter to start machine... "
  gets

  prize = 0

  values_range.each do |i|
    print "#{i}\r"
    sleep 0.1
  end

  x = rand(values_range)
  print "#{x}\r"

  values_range.each do |i|
    print "#{x}-#{i}\r"
    sleep 0.1
  end

  y = rand(values_range)
  print "#{x}-#{y}\r"

  values_range.each do |i|
    print "#{x}-#{y}-#{i}\r"
    sleep 0.1
  end

  z = rand(values_range)
  print "#{x}-#{y}-#{z}"

  puts

  case "#{x}#{y}#{z}"
  when '000'
    prize = -money
  when '111'
    prize = 10
  when '222'
    prize = 20
  when '333'
    prize = 30
  when '444'
    prize = 40
  when '555'
    prize = 50
  else
    prize = -1
  end

  if prize >= 0
    puts "You have earned #{prize} dollar(s)."
  else
    puts "You lost #{prize.abs} dollar(s)."
  end

  money += prize

  puts "Balance: #{money} dollar(s)."
  puts
end
