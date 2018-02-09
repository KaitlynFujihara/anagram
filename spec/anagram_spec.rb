require('rspec')
require('anagram')
require('pry')

describe('#anagram') do
  it("if two words have the same letters return 'This is an anagram'") do
    new_word = Anagram.new('tea eat')
    expect(new_word.anagram_check("tea eat")).to(eq('This is an anagram'))
  end
  it("if two words have different letters return 'This is not an anagram'") do
  new_word = Anagram.new('tea dog')
  expect(new_word.anagram_check("tea dog")).to(eq('This is not an anagram'))
  end
end
