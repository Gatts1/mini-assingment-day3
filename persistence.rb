# returns 3, because 3*9=27, 2*7=14, 1*4=4
# and 4 has only one digit

def persistence(num)
  count_steps = 0
  while num > 9
    num = num.to_s.split('').map { |digit| digit.to_i }.reduce(:*)
    puts num
    count_steps =   count_steps + 1
  end
  return count_steps
end

puts persistence(ARGV.first.to_i)
