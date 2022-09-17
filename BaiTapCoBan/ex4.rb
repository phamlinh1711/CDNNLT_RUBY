puts "Nhập vào 3 số của 1 mảng:"
arr = []
3.times do |i|
  arr[i] = gets.chomp.to_i
end
arr = arr.sort
puts "Tang dan: " + arr.join(",")
puts "Giam dan: " + arr.reverse.join(",")
gets