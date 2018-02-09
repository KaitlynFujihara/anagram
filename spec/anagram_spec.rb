require('rspec')
require('anagram')
require('pry')

describe('#anagram') do
  it('turn two given words into an array') do
    new_word = Anagram.new("tea eat")
    expect(new_word.new_array("tea eat")).to(eq(['tea','eat']))
  end

  # it('check to see if two words have the same letters and return "These words are anagrams" if true') do
  # expect(new_word = Anagram.new(['tea','eat']).anagram_check).to(eq('These words are anagrams'))
  # end
end
