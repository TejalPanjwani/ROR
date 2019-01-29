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
    puts "Enter number where to start: "
    start = gets.to_i
    possition = start - 2
    while arrayOfPlayers.length != 1 do
        possition = (possition + diff)
        if possition >= arrayOfPlayers.length
            possition = possition%arrayOfPlayers.length
            finalArray.push(arrayOfPlayers[possition])
            arrayOfPlayers.delete_at(possition)
            possition -= 1
        else
            finalArray.push(arrayOfPlayers[possition])
            arrayOfPlayers.delete_at(possition)
            possition -= 1
        end
    end
    print arrayOfPlayers
    puts
    print finalArray

