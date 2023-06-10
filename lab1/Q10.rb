def count_words(sentence1, sentence2)
    words1 = sentence1.downcase.split(' ')
    words2 = sentence2.downcase.split(' ')
  
    count = 0
    word_count = Hash.new(0)
  
    words1.each { |word| word_count[word] += 1 }
    words2.each { |word| word_count[word] += 1 }
  
    word_count.each do |word, occurrence|
      count += 1 if occurrence == 1
    end
  
    return count
  end
  
  # Example usage:
  sentence1 = "Hello world this is a sample sentence"
  sentence2 = "This sentence is a sample"
  
  common_word_count = count_words(sentence1, sentence2)
  puts "Number of common words with one occurrence: #{common_word_count}"
  