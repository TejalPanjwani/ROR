#Task 3
#If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
#Find the sum of all the multiples of 3 or 5 below N.
print "Enter lower limit:"
low = gets.to_i
print "Enter higher limit:"
high = gets.to_i
sum = 0
if low > 0 && high >0
    print "We get numbers: "
    (low...high).each do |i|
        if i%3==0 || i%5==0
            print i," "
            sum = sum+i
        end
    end
    print "\nsum of all the multiples of 3 or 5 between #{low} and #{high} is:  ",sum
    puts
else
    puts "Please enter natural numbers"
end

