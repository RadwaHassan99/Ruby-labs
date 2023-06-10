def rotate_left(nums)
    rotated = nums[1..-1] + [nums[0]]
    return rotated
end
  
  # Example usage:
arrays = [[1, 2, 5], [1, 2, 3], [1, 2, 4]]
arrays.each do |nums|
rotated_nums = rotate_left(nums)
puts "#{nums}: #{rotated_nums}"
end
  