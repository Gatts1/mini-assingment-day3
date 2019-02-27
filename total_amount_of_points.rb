def points_team(games)  
    total = 0
    games.each do |value|
       
        x,y = value.split(":").map(&:to_i)
        if x > y
            total = total + 3
        elsif y == x
            total = total + 1          
        end          
    end
    
   puts total
end

points_team(["1:0","2:0","3:0","4:0","2:1","1:3","1:4","2:3","2:4","3:4"])

