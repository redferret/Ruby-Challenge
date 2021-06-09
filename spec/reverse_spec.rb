require 'rspec'
require './lib/reverse'

RSpec.describe Reverse do
  describe '#new' do
    it 'tests that Reverse exists' do
      reverse = Reverse.new
      expect(reverse).is_a? Reverse
    end
  end
end
