
    i = 0
    arr = []
    while (true)
      puts 'Nhập vào 1 số(0 để dừng nhập): '
      value = gets.chomp.to_i
      if (value == 0)
        break
      else
        arr[i] = value
        i += 1
      end
    end
  
    puts 'GTLN: ' + arr.max.to_s
    puts 'GTNN: ' + arr.min.to_s
    puts 'GTTB: ' + (arr.sum * 1.0 / arr.length).to_s
    gets

  