# rps('scissors','paper') // Player 1 won!
# rps('scissors','rock') // Player 2 won!
# rps('paper','paper') // Draw

def rps(op1, op2)
  return "Draw" if op1 == op2
  
  ter = [["paper", "scissors"], ["scissors", "rock"], ["rock", "paper"]]
  ter.each do |option|
    if (option - [op1, op2]).empty?
      return option.last == op1 ? "Player 1 won!" : "Player 2 won!" 
    end
  end 
end

# another solution with dictionary
def rps2(p1, p2)
  beatmap = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }

  if p1 == p2
    "Draw!"
  elsif beatmap[p1] == p2
    "Player 1 won!"
  else
    "Player 2 won!"
  end
end

puts rps('paper', 'scissors')
