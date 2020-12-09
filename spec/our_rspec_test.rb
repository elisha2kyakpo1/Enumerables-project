# frozen_string_literal: true

# rubocop:disable Metrics/BlockLength
require_relative '../ruby'

describe Enumerable do
  describe '#my_each' do
    it 'Performs a block of code if given and returns the passed enumerable' do
      expect([1, 2, 3].my_each { |x| 5 * x }).to eq([1, 2, 3])
    end
  end

  describe '#my_each_with_index' do
    it 'Performs a block of code if given and returns the passed enumerable' do
      expect((0..9).my_each_with_index { |x, y| y * x }).to eq((0..9))
    end
  end

  describe '#my_select' do
    it 'Returns an array which passed a given block test' do
      expect([1, 2, 3].my_select { |x|  x < 3 }).to_not eq [1]
    end
  end

  describe '#my_all?' do
    it 'Returns true if all elements pass a condition passed to a block' do
      expect([1, 2, 3].my_all? { |x| x < 4 }).to eq true
    end
  end

  describe '#my_any?' do
    it 'Returns true if any of elements pass a condition passed to a block' do
      expect([1, 2, 3].my_any? { |x| x < 2 }).to eq true
    end
  end
  describe '#my_none?' do
    it 'Returns true if none of the elements pass a condition in a block' do
      expect([1, 2, 3].my_none? { |x| x > 4 }).to eq true
    end
  end

  describe '#my_count' do
    it 'Returns true if all elements pass a condition passed to a block' do
      expect([1, 2, 30].my_count { |x| x < 4 }).to eq 2
    end
  end

  describe '#my_inject' do
    it 'Returns the sum of object enumerables' do
      expect([1, 2, 30].my_inject(:+)).to eq 33
    end
  end

  describe '#my_map' do
    it 'Returns an array of tranformed elements' do
      expect([1, 2, 30].my_map { |x| x * 4 }).to eq [4, 8, 120]
    end
  end
end
# rubocop:enable Metrics/BlockLength
