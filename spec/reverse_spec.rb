require 'rspec'
require './lib/ruby_challenge'

RSpec.describe RubyChallenge do
  
  include RubyChallenge

  describe '#my_reverse' do
    it 'reverses the string given' do
      test_string = 'ABCDEF'
      exepcted_string = 'FEDCBA'
      
      result = my_reverse(test_string)

      expect(result).to eq exepcted_string
    end

    it 'handles empty strings' do
      test_string = ''
      exepcted_string = ''

      result = my_reverse(test_string)

      expect(result).to eq exepcted_string
    end

    it 'handles single characters strings' do
      test_string = 'A'
      exepcted_string = 'A'

      result = my_reverse(test_string)

      expect(result).to eq exepcted_string
    end
  end

  describe '#flatten' do
    it 'flattens the array' do
      test_array = [1, [2, 3, 4], 5, [6, [7, 8]], [[[9, [10, 11]]], 12]]
      expected_array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12]

      result = flatten(test_array)

      expect(result).to eq expected_array
    end

    it 'handles empty arrays' do
      test_array = []
      expected_array = []

      result = flatten(test_array)

      expect(result).to eq expected_array
    end

    it 'handles already flattened arrays' do
      test_array = [1, 2, 3]
      expected_array = [1, 2, 3]

      result = flatten(test_array)

      expect(result).to eq expected_array
    end
  end
end
