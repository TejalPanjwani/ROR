=begin
It is possible to write five as a sum in exactly six different ways:
4 + 1
3 + 2
3 + 1 + 1
2 + 2 + 1
2 + 1 + 1 + 1
1 + 1 + 1 + 1 + 1
How many different ways can N be written as a sum of at least two positive integers?
=end

puts "Enter number: "
number = gets.to_i
$takeValue=[]
$amj = []
secondFinal=[]
$hashArray = {6=>[],5=>[],4=>[],3=>[],2=>[] }
array = (1..number).to_a

array.each do |first|
    array.each do |second|
        ans = first + second
        if ans <= number
            $hashArray[ans].push([first,second].sort)
            $hashArray[ans] = $hashArray[ans].uniq
        
        end
    end
end
finalArray = $hashArray[number]
print $hashArray 
puts
$hashArray[number].each do |takeValue|
    print takeValue.length
puts
end
print finalArray
puts
forLoop = *(1..number-1)
#forLoop.reverse
forLoop.reverse_each do |time|
    value = $hashArray[time]
    print "value",value  
    puts
end    
#print finalArray
puts

def check(variable)
    if variable==1
        $sample.push(1)
    else
        value = $hashArray[variable]
        value.length.times do |time|
            $sample.push(value[time]) 
            print "sample:",$sample
            puts
            $takeValue.push($sample.clone.flatten)
            #$amj.push(takeValue)
            $sample.each do |i|
                
                if i==value[time]
                    print "value:",value[time]
                    $sample.delete(value[time])
                    if $sample.length==0
                        $sample.push(value[time])
                    end 
                    #print "take:",$takeValue
                end
            end
        end
        
    end
    print "take:",$takeValue

end
print "finl:",finalArray
puts 
#print amj

len = (1..$hashArray.length).to_a
    puts
    puts
    print "take:",$takeValue
    puts
   secondFinal=finalArray.clone
    secondFinal.each do |ele|
        #print "element",ele,"abc"
        $sample=[] 
        puts ele.length
        ele.length.times do |index|
            variable=ele[index]
            #print "vari:, index",variable,index
            puts
            check(variable)
        end
    end
#end
print $amj
