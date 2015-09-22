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

    it 'returns a conversion for a two chars roman number but returns 9' do
      expect(RomanConverter.to_integer('IX')).to eql(9)
    end
  end

  describe 'complex conversion' do
    it 'returns a conversion for a three chars roman number' do
      expect(RomanConverter.to_integer('CII')).to eql(102)
    end

    it 'returns a conversion for a four chars roman number' do
      expect(RomanConverter.to_integer('MCII')).to eql(1102)
    end

    it 'returns a conversion for a four chars roman number with subtraction' do
      expect(RomanConverter.to_integer('MCIX')).to eql(1109)
    end

    it 'returns a conversion for a five chars roman number with subtraction' do
      expect(RomanConverter.to_integer('DXCIX')).to eql(599)
    end

    it 'returns a conversion for a six chars roman number with subtraction' do
      expect(RomanConverter.to_integer('MCCLIX')).to eql(1259)
    end

    it 'returns a conversion for the biggest roman number' do
      expect(RomanConverter.to_integer('MMMCMXCIX')).to eql(3999)
    end
  end
end
