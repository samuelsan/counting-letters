def count_letters(sentence)
  @letters = Hash.new(0)
  sentence.each do |word|
    word.split('').each { |letter| @letters[letter] += 1 }
  end
  @letters
end

puts count_letters(["lighthouse in the house..."])

def count_index(phrase)
  @index = Hash.new { |hash, key| hash[key] = [] }
  phrase.split('').each_with_index do |letter, index|
    @index[letter] << index
  end
  @index
end


puts count_index("lighthouse in the house ...")

