puts 'enter two words'
new_word = gets.chomp

class Anagram
  def initialize(new_word)
    @new_word = new_word
  end

  def downcase(new_word)
    word_downcase = new_word.downcase
  end

  def anagram_check(word_downcase)
    new_anagram = Anagram.new(word_downcase)
    word_array= word_downcase.split(" ")
    vowel_test= word_downcase.split("")
    vowels=["a","e","i","o","u","y"]
    if (vowel_test & vowels).any? == false
      "You need to input actual words!"
    elsif word_array[0].chars.sort == word_array[1].chars.sort
      "This is an anagram"
    else
      "This is not an anagram"
    end
  end
end
