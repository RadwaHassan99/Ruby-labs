strings = ["if condition", "else statement", "ifelse", "if", "If condition"]
strings.each do |string|
    if string.start_with?("if")
      puts "#{string}: True"
    else
      puts "#{string}: False"
    end
end