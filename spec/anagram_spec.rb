require('rspec')
require('anagram')
require('pry')

describe('#anagram') do
  it("if words are upper and lower case, make them all lower case to be compared") do
  expect(Anagram.new('TeA EaT').downcase('TeA EaT')).to(eq("tea eat"))
  end

  it("if two words have the same letters return 'This is an anagram' if not, return 'This is not an anagram'") do
  expect(Anagram.new('tea eat').anagram_check('tea eat')).to(eq("This is an anagram"))
  end
end
