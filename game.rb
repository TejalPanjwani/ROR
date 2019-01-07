#Game
=begin
Computer will guess a number. Between 50 to 150.
User should have 10 tries to identify that number.
If the user enters a lower number then selected then give a message like this is “This is lesser then selected number” and if the user enters higher number then selected show message like “This is greater then selected number”.
Suppose computer guess 64.
User enters 55 then show message “This is laser then selected number”
User enters 65 then show message “This is greater than selected number”
And if user gives correct number at 5th attempt then show this message → “Congratulations, You got the number <number> in 5 attempts(try)”
Or if user not able to provide correct number in 10 tries then show message like “You lose this game”#
=end

num = (50..150).to_a.shuffle[0]
#puts num
(1..10).each do |i|
    puts "Enter number: "
    ans = gets.to_i
    if i==10
        puts "you lose the game"
    else
        if ans == num
             puts "Congratulations!!!! You got the number #{ans} in #{i} attempts(try)"
            break
        elsif ans > num
             puts "This is greater than selected number"
        elsif ans < num
            puts "This is laser then selected number"
        end
    end
    
end
        
