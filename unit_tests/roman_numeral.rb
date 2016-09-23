class RomanNumeral

  def roman_numbers(number)
    output = []
    M = 1000
    C = 500
    
    romans = [1000, 500, 100, 50, 10, 5, 1]
        romans.each do |value|
          if number > 0
            quantity = number/value 
            quantity.times do
              output << value
            end
            number = number % value
          end
        end
    output
  end
  end

end


#tests

RSpec.describe RomanNumeral do
  let(:roman_numeral) { RomanNumeral.new }

  describe '#roman_numbers' do
    it "should return an array of 2 quarters when given 50" do
      expect(roman_numeral.roman_numbers(1000)).to eq([M])
    end
  end
end