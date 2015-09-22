require 'spec_helper'
require 'roman_number'

RSpec.describe RomanNumber do
  describe 'valid?' do
    it 'returns true for a valid roman number' do
      expect(MyKlazz.valid_roman?('X')).to be true
    end

    it 'returns false for a empty string' do
      expect(MyKlazz.valid_roman?('')).to be false
    end

    it 'returns false for a nil value' do
      expect(MyKlazz.valid_roman?(nil)).to be false
    end
  end

  class MyKlazz
    extend RomanNumber

    def self.valid_roman?(string)
      valid?(string)
    end
  end
end
