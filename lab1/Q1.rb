def create_copies(string, n)
    result = ""
    n.times do |i|
      result += (i + 1).to_s + "." + string * (i + 1)
      result += "\n"
    end
    result+="."  
end
  

# Example usage:
given_string = "a"
n = 6
output = create_copies(given_string, n)
puts output