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
        
