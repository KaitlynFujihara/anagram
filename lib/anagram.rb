puts 'enter two words'
new_word = gets.chomp

class Anagram
  def initialize(new_word)
    @new_word = new_word
  end

  def downcase(new_word)
    word_downcase = new_word.downcase
  end
  
  def anagram_check(new_word)
    word_downcase = new_word.downcase
    word_array= word_downcase.split(" ")
    if word_array[0].chars.sort == word_array[1].chars.sort
      "This is an anagram"
    else
      "This is not an anagram"
    end
  end
end
