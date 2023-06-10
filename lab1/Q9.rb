def balanced_brackets?(expression)
    stack = []
  
    expression.chars.each do |char|
      if opening_bracket?(char)
        stack.push(char)
      else
        return false if stack.empty? || !matching_brackets?(stack.pop, char)
      end
    end
  
    return stack.empty?
  end
  
  def opening_bracket?(char)
    char == '(' || char == '{' || char == '['
  end
  
  def matching_brackets?(opening, closing)
    (opening == '(' && closing == ')') ||
      (opening == '{' && closing == '}') ||
      (opening == '[' && closing == ']')
  end
  
  # Example usage:
  expressions = ['{[()]}', '{[(])}', '{{[[(())]]}}']
  
  expressions.each do |expression|
    if balanced_brackets?(expression)
      puts "#{expression} is balanced."
    else
      puts "#{expression} is not balanced."
    end
  end
  