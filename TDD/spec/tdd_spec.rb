require 'rspec'
require 'tdd'

describe Array do

  describe "#uniq" do
    let(:array) { [1, 2, 3, 7, 6, 7, 3, 1, 0] }
    it "removes duplicates from an array" do
      expect(array.uniq).to eq([1,2,3,7,6,0])
    end
  end

  describe "#two_sum" do
    let(:array) { [-1, 0, 2, -2, 1] }
    it "gives indices of numbers in the array that equal zero" do
      expect(array.two_sum).to eq([[0,4], [2,3]])
    end
  end

  describe "#my_transpose" do
    let(:array) { [[0, 1, 2], [3, 4, 5], [6, 7, 8]] }
    it "convert between the row-oriented and column-oriented representations" do
      expect(array.my_transpose).to eq(  ([[0, 3, 6], [1, 4, 7], [2, 5, 8]]))
    end
  end

  describe "#stock_picker" do
    let(:array) { [17,3,6,9,15,8,6,1,10] }
    it "outputs the most profitable pair of days on which to first buy the stock and then sell the stock" do
      expect(array.stock_picker).to eq([1, 4])
    end
  end
end
