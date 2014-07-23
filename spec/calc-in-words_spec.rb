require('rspec')
require('calc-in-words')

describe('calc-in-words') do
  it('calculates 8 from \"What is 5 plus 3\"') do
    word_calc('What is 5 plus 3').should(eq(8))
  end
  it('calculates 2 from \"What is 5 minus 3\"') do
    word_calc('What is 5 minus 3').should(eq(2))
  end
  it('calculates 15 from \"What is 5 times 3\"') do
    word_calc('What is 5 times 3').should(eq(15))
  end
  it('calculates 2.5 from \"What is 5 divided by 2\"') do
    word_calc('What is 5 divided by 2').should(eq(2.5))
  end
  it('calculates 64 from \"What is 4 to the 3 power?\"') do
    word_calc('What is 4 to the 3 power').should(eq(64))
  end
  it('calculates 5 from \"What is 4 plus 6 plus 5\"') do
    word_calc('What is 4 plus 6 plus 5').should(eq(15))
  end
end
