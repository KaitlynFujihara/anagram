

class Anagram
  def initialize(word)
    @word = word
  end

  def new_array(new_word)
    word_array= new_word.split(" ")

  end
  # def anagram_check()
  # end
  puts 'enter two words'
  word = gets.chomp
  new_word = Anagram.new(word)
  new_word.new_array(word)

end
