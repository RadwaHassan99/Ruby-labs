def add_last_character(string)
    last_char = string[-1]
    return last_char + string + last_char
end
  
  # Example usage:
  strings = ["cab", "abc", "dabcdd", "java"]
  strings.each do |string|
    new_string = add_last_character(string)
    puts "#{string}: #{new_string}"
  end
  