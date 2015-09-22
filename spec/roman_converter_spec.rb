require 'spec_helper'
require 'roman_converter'

RSpec.describe RomanConverter do
  describe 'no conversion' do
    it 'returns zero if no roman number is provided' do
      expect(RomanConverter.to_integer('')).to eql(0)
    end

    it 'returns zero if a nil is provided' do
      expect(RomanConverter.to_integer(nil)).to eql(0)
    end
  end

  describe 'simple conversion' do
    it 'returns a conversion of a simple roman number' do
      expect(RomanConverter.to_integer('I')).to eql(1)
    end

    xit 'returns a conversion for a two chars roman number but returns 9' do
    end
  end

  describe 'complex conversion' do
    xit 'returns a conversion for a three chars roman number' do
    end

    xit 'returns a conversion for a four chars roman number' do
    end

    xit 'returns a conversion for the biggest roman number' do
    end
  end
end
