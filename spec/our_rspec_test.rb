require_relative '../ruby'

describe Enumerable do
  let(:my_array) { [1, 2, 3] }
  let(:my_array1) { [1, 2, 30] }
  describe '#my_each' do
    it 'Performs a block of code if given and returns the passed enumerable' do
      expect(my_array.my_each { |x| 5 * x }).to eq(my_array)
    end
    it 'Performs a block of code if given and returns the passed enumerable' do
      expect(my_array.my_each { |x| 5 * x }).to_not eq([1, 2])
    end
  end

  describe '#my_each_with_index' do
    it 'Performs a block of code if given and returns the passed enumerable' do
      expect((0..9).my_each_with_index { |x, y| y * x }).to eq((0..9))
    end
    it 'Performs a block of code if given and returns the passed enumerable' do
      expect((0..9).my_each_with_index { |x, y| y * x }).to_not eq((0...9))
    end
  end

  describe '#my_select' do
    it 'Returns an array which passed a given block test' do
      expect(my_array.my_select { |x| x < 3 }).to eq [1, 2]
    end
    it 'Returns an array which passed a given block test' do
      expect(my_array.my_select { |x| x < 3 }).to_not eq my_array
    end
  end

  describe '#my_all?' do
    it 'Returns true if all elements pass a condition passed to a block' do
      expect(my_array.my_all? { |x| x < 4 }).to eq true
    end
    it 'Returns false if atleast one element does not pass a block condition' do
      expect(my_array.my_all? { |x| x > 2 }).to eq false
    end
  end

  describe '#my_any?' do
    it 'Returns true if any of elements pass a condition passed to a block' do
      expect(my_array.my_any? { |x| x < 2 }).to eq true
    end
    it 'Returns false if none of elements do not pass a block condition' do
      expect(my_array.my_any? { |x| x < 1 }).to eq false
    end
  end
  describe '#my_none?' do
    it 'Returns true if none of the elements pass a condition in a block' do
      expect(my_array.my_none? { |x| x > 4 }).to eq true
    end
    it 'Returns false if any of the elements pass a condition in a block' do
      expect(my_array.my_none? { |x| x == 3 }).to eq false
    end
  end

  describe '#my_count' do
    it 'Returns the number of elements that pass a block condition' do
      expect(my_array1.my_count { |x| x < 4 }).to eq 2
    end
    it 'Returns the number of elements that pass a block condition' do
      expect(my_array1.my_count { |x| x < 4 }).to_not eq 7
    end
  end

  describe '#my_inject' do
    it 'Returns the sum of object enumerables' do
      expect(my_array1.my_inject(:+)).to eq 33
    end
    it 'Returns the sum of object enumerables' do
      expect(my_array1.my_inject(:+)).to_not eq 30
    end
  end

  describe '#my_map' do
    it 'Returns an array of tranformed elements' do
      expect(my_array1.my_map { |x| x * 4 }).to eq [4, 8, 120]
    end
    it 'Returns an array of tranformed elements' do
      expect(my_array1.my_map { |x| x * 4 }).to_not eq [40, 8, 120]
    end
  end
end
