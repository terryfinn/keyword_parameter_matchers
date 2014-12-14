require 'spec_helper'

describe KeywordParameterMatchers::NullMethod do
  describe '.new_if_nil' do
    it 'returns a new instance if the method is nil' do
      method = nil

      expect(
        KeywordParameterMatchers::NullMethod.new_if_nil(method)
      ).to be_kind_of(KeywordParameterMatchers::NullMethod)
    end

    it 'returns a the method if the method is not nil' do
      method = instance_double(Method)

      expect(
        KeywordParameterMatchers::NullMethod.new_if_nil(method)
      ).to eq(method)
    end
  end

  describe '#name' do
    it 'returns a empty string' do
      null_method = KeywordParameterMatchers::NullMethod.new_if_nil(nil)

      expect(
        null_method.name
      ).to eq('')
    end
  end

  describe '#parameters' do
    it 'returns a empty array' do
      null_method = KeywordParameterMatchers::NullMethod.new_if_nil(nil)

      expect(
        null_method.parameters
      ).to eq([])
    end
  end
end
