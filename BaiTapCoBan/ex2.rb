def isTriangle(a, b, c)
    if a.is_a?(Integer) && b.is_a?(Integer) && c.is_a?(Integer)
      if a + b >= c || a + c >= b || b + c >= a 
        return true
      end
    end
    return false
end

  puts 'Nhập vào 3 cạnh của tam giác'
  a = gets.chomp.to_i
  b = gets.chomp.to_i
  c = gets.chomp.to_i
  if (isTriangle(a, b, c))
    puts "#{a}, #{b}, #{c} là 3 cạnh của tam giác"
    cv = a + b + c
    p = (cv * 1.0 / 2).to_f
    dt = Math.sqrt(p * (p - a) * (p - b) * (p - c))
    puts "Chu vi: #{cv}"
    puts "Diện tích: #{dt}"
  else
    puts "#{a}, #{b}, #{c} không phải là 3 cạnh của tam giác"
  end
  gets