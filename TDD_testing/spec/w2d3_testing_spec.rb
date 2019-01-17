
require "w2d3_testing"

RSpec.describe Array do 
    
  describe "#my_uniq" do 
    subject(:test_array) { [1,2,1,3,3] }
    it "removes duplicate entries from an array" do 
      expect(test_array.my_uniq).to eq([1,2,3])
    end
  end

  describe "#two_sum" do
    subject(:test_array) { [-1, 0, 2, -2, 1] }
    it "returns indices of elements the sum to 0" do
      expect(test_array.two_sum).to eq([[0, 4], [2, 3]])
    end
    # it "uses Array#my_uniq" do
    #   return_value = test_array.two_sum 
    #   expect(return_value.my_uniq).to eq(return_value)
    # end
  end

  describe "#my_transpose" do
    subject(:test_array) { [[0, 1, 2],[3, 4, 5],[6, 7, 8]] }
    it "switches rows and columns of a 2d array" do
      expect(test_array.my_transpose).to eq(test_array.transpose)
    end
  end
  
end