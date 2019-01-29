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
#finalArray.push(5 => hashArray[5])
#finalArray.push(hashArray[5])
$hashArray[number].each do |takeValue|
    print takeValue.length
    #finalArray.push(takeValue)
puts
end
print finalArray
puts
forLoop = *(1..number-1)
#forLoop.reverse
#forLoop.reverse
forLoop.reverse_each do |time|
   # print time,"\n"
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
=begin
finalArray.each do |ele|
    $sample=[]
    ele.length.times do |i|
        variable = ele[i]
        check(variable)
    end
    #amj.push($sample)
end
=end
print "finl:",finalArray
puts 
#print amj

len = (1..$hashArray.length).to_a
#len1=len.reverse
#len1.each do |i|
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
=begin
    arr = $hashArray[i]
    arr.length.times do |j|
        arr[j]


=end


=begin

def check(variable)
    value = variable
    print "value:",value
    puts
    if value == 1
        $sample.push(1)
     else
    #    #getArray = hashArray[value]
    $sample.push($hashArray[value])
       #$hashArray[value].each { |i| $sample.push(i).flatten(2) }
       #$sample.group_by{|animal| animal[0]}
       print $sample
       puts 
       print $amj.push($sample.flatten)
       puts
       
    end
    #$sample.length+1.times do |i|
        #$amj.push($sample[0]+$sample[i])
        #print $amj
    #end

end
=end





=begin
hashArray[5].each do |ele|
    sample=[]
    ele.length.times do  |i|
        value = ele[i]
        print value.length
        #value.each do |j|
            #sample.push(hashArray[value][j])
        #end
    end
    finalArray.push(sample)
end
print finalArray
=end








=begin
finalArray.each do |ele|
    sample = []
   variable = ele
   puts "in loop"
   variable.length.times do  |i|
        print i
        key = variable[i]
        hashArray[key].length.times do |j|
            sample.push(hashArray[key][j])
        end
        puts
    end   
    #print variable[i].push(hashArray[key])
   puts
   amj.push(sample.flatten)
   #finalArray.push(amj)
   
end
amj.each do |ele|
    sample=[]
    ele.length.times do |i|
        ele.length.times do |index|
            ans = ele[i]+ele[index]
            if ans <= number
                #sample.push(ele[i])
                sample.push(ele[index])
            end
        end
   finalArray.push(sample.sort.uniq)
    end
=end
#end
#print finalArray

=begin    value.each do |first|
        value.each do |second|
        ans = first + second
        if ans == 5
            finalArray[5].push([first,second].sort)
            finalArray[5] = finalArray[5].uniq
            puts
        end
    end
end  
=end





































=begin
 puts "Enter number"
 number = gets.to_i
 arrayOfNumber = []
 number.times {arrayOfNumber.push(1.to_i)}
 print arrayOfNumber
 array = {}
finalArray = {}

arrayOfNumber.each do |ele|
    [*(1..4)].reverse.each do |i|
        ans = number%i
        #if number != i
            if ans == 0
                array.push()
            else
                if number == ans+i
                    array.push( {i=>ans} )
                end
            end
        #end
    end
    number -= 1
end

print array.uniq

array.legth-2.times do |i|
    if array[i][key]==array[i+1][key]
        finalArray.push({key=>aarray[i][key]==array[i+1][key]})

=end




=begin
def check(i,number)
    ans = number - i
    if ans > 0
        $array.push(i)
        $array.push(ans)
        $finalArray.push($array)
        puts "heyy "
        check(i,ans)

    else 
        $array.push(i)
        $array.push(number)
        $finalArray.push($array)
        
    end
end
puts "Enter number"
number = gets.to_i
$tem = number
$array=[]
$finalArray=[]
number-1.times do |i|
    check(i,number)
end
=end