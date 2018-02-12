require('rspec')
require('anagram')
require('pry')

describe('#anagram') do
  it("if words are upper and lower case, make them all lower case to be compared") do
  new_anagram_downcase = Anagram.new('TeA EaT')
  expect(new_anagram_downcase.downcase_one_word('TeA EaT')).to(eq("tea eat"))
  end

  it("if a string does not include a vowel (a, e, i ,o ,u, y) it is not a word and will return 'You need to input actual words!'") do
  new_anagram_vowel = Anagram.new('sdfgh jkl')
  expect(new_anagram_vowel.anagram_check('sdfgh jkl')).to(eq('You need to input actual words!'))
  end

  it("if two words have the same letters return 'This is an anagram' if not, return 'This is not an anagram'") do
  new_anagram_check = Anagram.new('tea eat')
  expect(new_anagram_check.anagram_check('tea eat')).to(eq("This is an anagram"))
  end

  it("if two words have no matching letters, it will return 'this is an antigram'") do
  antigram = Anagram.new('hi bye')
  expect(antigram.anagram_check('hi bye')).to(eq("This is an antigram"))
  end

  it("if a phrase has an anagram then it will return 'This phrase is an anagram' if it is an antigram it will return 'This phrase is an antigram'") do
  check_phrase = Phrase.new('tea eat', 'te aeat')
  expect(check_phrase.anagram_check_phrase('tea eat', 'te aeat')).to(eq("This phrase is an anagram"))
  end
end
