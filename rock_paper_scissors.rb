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

puts rps('paper', 'scissors')
