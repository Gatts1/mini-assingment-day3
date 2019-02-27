def find_even_index(arr)
  arr.each_with_index do |num, index|
    return 0 if index == 0 && arr[(index + 1)..arr.length].reduce(:+) == 0
    return index + 1 if arr[0..(index + 1)].reduce(:+) == arr[(index + 1)..arr.length].reduce(:+)
  end
  return -1
end

puts find_even_index([20,10,-80,10,10,15,35]) #3
