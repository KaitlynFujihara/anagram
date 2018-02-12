class Anagram
  def initialize(new_word)
    @new_word = new_word
  end

  def downcase_one_word(new_word)
    word_downcase = new_word.downcase
  end

  def anagram_check(word_downcase)
    new_anagram = Anagram.new(word_downcase)
    word_array= word_downcase.split(" ")
    letter_array= word_downcase.split("")
    word_array1= word_array[0].split("").sort
    word_array2= word_array[1].split("").sort
    vowels=["a","e","i","o","u","y"]
    if (letter_array & vowels).any? == false
      "You need to input actual words!"
    elsif word_array[0].chars.sort == word_array[1].chars.sort
      "This is an anagram"
    elsif (word_array1 & word_array2).any? == false
      "This is an antigram"
    else
      "This is not an anagram or an antigram"
    end
  end
end

class Phrase
  def initialize(new_word2, new_word3)
    @new_word2 = new_word2
    @new_word3 = new_word3
  end
  def downcase_phrase(new_word2, new_word3)
    word_downcase2 = new_word2.downcase
    word_downcase3 = new_word3.downcase
  end
  def anagram_check_phrase(word_downcase2, word_downcase3)
    new_anagram_phrase = Phrase.new(word_downcase2, word_downcase3)
    letters2 = word_downcase2.gsub(/[^a-z^A-Z]/, '').chars.sort
    letters3 = word_downcase3.gsub(/[^a-z^A-Z]/, '').chars.sort
    if letters2 == letters3
      "This phrase is an anagram"
    elsif (letters2 & letters3).any? == false
      "This phrase is an antigram"
    end
  end
end
