require_relative '../ruby'

describe Enumerable do
  describe "#my_each" do
    it "Performs a block of code if given and returns the passed enumerable" do
      expect([1,2,3].my_each{ |x|  5*x }).to eq ([1,2,3])
    end
  end

  describe "#my_each_with_index" do
    it "Performs a block of code if given and returns the passed enumerable" do
      expect((0..9).my_each_with_index{ |x, y|  y*x }).to eq ((0..9))
    end
  end

  describe "#my_select" do
    it "Returns an array which passed a given block test" do
      expect([1,2,3].my_select{ |x|  x < 3 }).to_not eq ([1])
    end
  end
end
