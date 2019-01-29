=begin    
    Game 

    Accept number of players n - integer
    Accept difference d - integer
    Assume a circle consisting of all the players
    Name the players starting from Player-1 to Player-n
    Move in the circle and start eliminating every player who is at the count of d. This has to be continued unless only one player remains in the circle. The remaining player is the winner.
    For example, For n = 10 and d = 3
    Players: Player-1....Player-10
    The players will be eliminated in the following order:
    Player-3 (Because this player is at 3rd position from Player-1)
    Player-6
    Player-9
    Player-2
    Player-7
    Player-1
    Player-8
    Player-5
    Player-10
    This continues until the last player remains.
    winner is 4

=end

puts "Enter number of players: "
players = gets.to_i
puts "Enter difference: "
diff = gets.to_i
arrayOfPlayers = (1..players).to_a
finalArray = []
startAt = -1

while arrayOfPlayers.length !=1 do
    len = arrayOfPlayers.length
    startAt = startAt + diff
    #print startAt
    puts
    if startAt >= arrayOfPlayers.length 
        finalArray.reverse.each do |index|
            arrayOfPlayers.delete_at(index)
        end
        finalArray = []
        if arrayOfPlayers.length.even?
            #forEven()
            startAt = startAt - len
            finalArray.push(startAt)
            if arrayOfPlayers.length == 2
                if startAt >= 2
                    startAt =  startAt%2
                    arrayOfPlayers.delete_at(startAt)
                else
                    arrayOfPlayers.delete_at(startAt)
                end
            end

        else
            #forOddMethod
            startAt = startAt - len
            finalArray.push(startAt)
        end
    else
        finalArray.push(startAt)
    end
end

print arrayOfPlayers

=begin
arrayOfPlayers = [1,2,3,4,5,6,7]
length = 7
-1+3 = 2 ==> push in finalArray
2+3 = 5 ==> push in finalArray
5+3 = 8>7 ==>delete [2,5] index from arrayOfPlayers

now arrayOfPlayers = [1,2,4,5,7]
length = 5 ==> odd
8-7 = 1 ==> push in finalArray
1+3 = 4 ==> push in finalArray
4+3 = 7 > 5 ==> delete [1,4] index from arrayOfPlayers

now arrayOfPlayers = [1,4,5]
lenght = 3 ==>odd
7-5 = 2 ==> push in finalArray
2+3 = 5 >3 ==> delete [2] index from arrayOfPlayers

now arrayOfPlayers = [1,4]
length = 2 ==>even
5-3 = 2
if length==2 
    if 2 >= 2
        2%2 = 0
        delete_at(0)===> [1,4] delete 1 
        
we get 4 as answer

=end
############################  Second  ########################
=begin

arrayOfPlayers = [1,2,3,4,5,6,7,8,9,10,11]
length = 11
-1+3 = 2 ==> push in finalArray
2+3 = 5 ==> push in finalArray
5+3 = 8 ==> push in finalArray
8+3 =11 = 11 ==>delete [2,5,8] index from arrayOfPlayers

now arrayOfPlayers = [1,2,4,5,7,8,10,11]
length = 8 ==>even
11-11 = 0 ==> push in finalArray
0+3 = 3 ==> push in finalArray
3+3 = 6 ==> push in finalArray
6+3 = 9 >8 ==>delete [0,3,6] index from arrayOfPlayers

now arrayOfPlayers = [2,4,7,8,11]
length = 5 ==>odd
9-8 = 1 ==> push in finalArray
1+3 = 4 ==> push in finalArray
4+3 = 7>5 ==>delete [1,4] index from arrayOfPlayers

now arrayOfPlayers = [2,7,8]
length = 3==>odd
7-5 = 2 ==> push in finalArray
2+3 = 5>3 ==>delete [2] index from arrayOfPlayers

now arrayOfPlayers = [2,7]
length = 2 ==>even
5-3 = 2
if length==2 
    if 2 >= 2
        2%2 = 0
        delete_at(0)===> [2,7] delete 2
        
we get 7 as answer
=end





