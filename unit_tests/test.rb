# psudocode
# check how many quarters are contained in number
  # put number of quarters into array
  # determine remainder
# check how many dimes are contained in number
# check how many nickels are contained in number
# check how many pennies are contained in number

class Coins

  def change(number)
    output = []
    coinage = [25, 10, 5, 1]
        coinage.each do |value|
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

RSpec.describe Coins do
  let(:coins) { Coins.new }

  describe '#change' do
    it "should return an array of 2 quarters when given 50" do
      expect(coins.change(50)).to eq([25, 25])
    end

    it "should return an array of 2 quarters and a dime when given 60" do
      expect(coins.change(60)).to eq([25, 25, 10])
    end

    it "should return an array of 3 quarters when given 75" do
      expect(coins.change(75)).to eq([25, 25, 25])
    end

    it "should return an array of 3 quarters and a dime when given 85" do
      expect(coins.change(85)).to eq([25, 25, 25, 10])
    end

    it "should return an array of 3 quarters, a dime, and a nickel when given 90" do
      expect(coins.change(90)).to eq([25, 25, 25, 10, 5])
    end

    it "should return an array of 2 quarters, and a dime when given 70" do
      expect(coins.change(70)).to eq([25, 25, 10, 10])
    end

    it "should return an array of 1 quarter, and a penny when given 26" do
      expect(coins.change(26)).to eq([25, 1])
    end

    it "should return an array of 1 penny when given 1" do
      expect(coins.change(1)).to eq([1])
    end

    it "should return an array of 1 nickel when given 5" do
      expect(coins.change(5)).to eq([5])
    end

    it "should return an array of 25, 25, 25, 25, 10, 5, 1, 1, 1, 1when given 119" do
      expect(coins.change(119)).to eq([25, 25, 25, 25, 10, 5, 1, 1, 1, 1])
    end

    it "should return an array of 1 quarter and 2 pennies when given 27" do
      expect(coins.change(54)).to eq([25, 25, 1, 1, 1, 1])
    end


  end
end

