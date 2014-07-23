require('rspec')
require('calc-in-words')

describe('calc-in-words') do
  it('calculates 8 from \"What is 5 plus 3\"') do
    word_calc('What is 5 plus 3').should(eq(8))
  end
  it('calculates 2 from \"What is 5 minus 3\"') do
    word_calc('What is 5 minus 3').should(eq(2))
  end
end
