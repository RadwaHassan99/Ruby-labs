def sum_except_17_and_following(array)
    sum = 0
    skip_next = false
  
    array.each do |num|
      if num == 17
        skip_next = true
      elsif skip_next
        skip_next = false
      else
        sum += num
      end
    end
  
    return sum
  end
  
  # Example usage:
  arrays = [[3, 5, 17, 6], [3, 5, 1, 17], [3, 17, 1, 7], []]
  arrays.each do |array|
    sum = sum_except_17_and_following(array)
    puts "#{array}: #{sum}"
  end
  