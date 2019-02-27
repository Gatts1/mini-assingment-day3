def bot_teenager
    puts "Ingrese pregunta?"
    question = gets.chomp
    
    if question.include?("!") && question.include?("?")
        puts "Calm down, I know what I'm doing!"
    elsif question.include?("!")
        puts "Whoa, chill out!"
    elsif question.include?("?")
        puts "Sure"    
    else
        puts "Fine. Be that way!"
    end
end

bot_teenager
