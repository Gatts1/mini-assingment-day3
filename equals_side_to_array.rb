def find_even_index(arr)
  arr.each_with_index do |num, index|
    sum = arr[(index + 1)..arr.length].reduce(:+)
    return 0 if index == 0 && sum == 0
    return index + 1 if arr[0..(index + 1)].reduce(:+) == sum
  end
  return -1
end

puts find_even_index([20, 10, -80, 10, 10, 15, 35]) #3
