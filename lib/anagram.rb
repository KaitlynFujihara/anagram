

class Anagram
  def initialize(word)
    @word = word
  end

  def anagram_check(new_word)
    word_array= new_word.split(" ")
    if word_array[0].chars.sort == word_array[1].chars.sort
      "This is an anagram"
    elsif word_array[0].chars.sort != word_array[1].chars.sort
      "This is not an anagram"
    end
  end

  puts 'enter two words'
  word = gets.chomp
  new_word = Anagram.new(word)
end
