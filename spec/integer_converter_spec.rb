require 'spec_helper'
require 'integer_converter'

RSpec.describe IntegerConverter do
  describe 'no conversion' do
    it 'returns empty if zero is provided' do
      expect(IntegerConverter.to_roman(0)).to eql('')
    end
    #
    it 'returns zero if a nil is provided' do
      expect(IntegerConverter.to_roman(nil)).to eql('')
    end
  end

  describe 'simple conversion' do
    it 'returns a conversion to a simple roman number' do
      expect(IntegerConverter.to_roman(10)).to eql('X')
    end

    it 'returns a conversion from a 9 to two chars roman number' do
      expect(IntegerConverter.to_roman(9)).to eql('IX')
    end
  end

  describe 'complex conversion' do
    it 'returns a from 102 to a three chars roman number' do
      expect(IntegerConverter.to_roman(102)).to eql('CII')
    end

    it 'returns a from 1102 to a four chars roman number' do
      expect(IntegerConverter.to_roman(1102)).to eql('MCII')
    end
  end
end
