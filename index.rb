puts 'Welcome to Slot Machine!'
print 'How old are you: '
age = gets.to_i

print 'Do you want to play? (Y/N) '
play = gets.strip.upcase
puts

if age >= 18 && play == 'Y'
  money = 100
  puts "Ok let's play."
  puts "Your starting balance: #{money} dollars."
  puts

  while true
    print "Press enter to start machine... "
    gets

    x = rand(0..5)
    y = rand(0..5)
    z = rand(0..5)

    puts "The combination: #{x}-#{y}-#{z}"

    # 000
    if x == 0 && y == 0 && z == 0
      puts "You lost all money."
      money = 0
    end

    # 111
    if x == 1 && y == 1 && z == 1
      "You have earned 10 dollars."
      money += 10
    end

    # 222
    if x == 2 && y == 2 && z == 2
      "You have earned 20 dollars."
      money += 20
    end

    # 333
    if x == 3 && y == 3 && z == 3
      "You have earned 30 dollars."
      money += 30
    end

    # 444
    if x == 4 && y == 4 && z == 4
      "You have earned 40 dollars."
      money += 40
    end

    # 555
    if x == 5 && y == 5 && z == 5
      "You have earned 50 dollars."
      money += 50
    end

    puts "Balance: #{money} dollars."
  end
end
