def two_sum(nums, target)
    complement_map = {}
  
    nums.each_with_index do |num, index|
      complement = target - num
      if complement_map.key?(complement)
        return [complement_map[complement], index]
      end
  
      complement_map[num] = index
    end
  
    return []  
  end
  
  # Example usage:
  nums = [2, 7, 11, 15]
  target = 9
  
  indices = two_sum(nums, target)
  if indices.empty?
    puts "No two numbers sum up to the target."
  else
    puts "Indices: #{indices}"
    puts "Numbers: #{[nums[indices[0]], nums[indices[1]]]}"
  end
  