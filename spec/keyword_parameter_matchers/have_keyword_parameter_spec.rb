require 'spec_helper'

describe KeywordParameterMatchers::HaveKeywordParameter do
  describe '#matches?' do
    it 'returns true when the keyword is a method parameter' do
      method = instance_double(Method)
      allow(method).to receive(:parameters).and_return([[:key, :a]])
      matcher = KeywordParameterMatchers::HaveKeywordParameter.new(
        :a
      )

      expect(
        matcher.matches?(method)
      ).to eq(true)
    end

    it 'returns false when the keyword is not a method parameter' do
      method = instance_double(Method)
      allow(method).to receive(:parameters).and_return([[:key, :a]])
      matcher = KeywordParameterMatchers::HaveKeywordParameter.new(
        :b
      )

      expect(
        matcher.matches?(method)
      ).to eq(false)
    end
  end

  describe '#failure_message' do
    it 'says the keyword is not a method parameter' do
      method = instance_double(Method)
      allow(method).to receive(:name).and_return(:example_method)
      allow(method).to receive(:parameters).and_return([[:key, :a]])
      matcher = KeywordParameterMatchers::HaveKeywordParameter.new(
        :b
      )

      expect {
        matcher.matches?(method)
      }.to change {
        matcher.failure_message
      }.to(
        'expected "b" to have a keyword parameter in example_method ' \
          'parameter list [[:key, :a]]'
      )
    end
  end

  describe '#failure_message_when_negated' do
    it 'says the keyword is a method parameter, but was not expected' do
      method = instance_double(Method)
      allow(method).to receive(:name).and_return(:example_method)
      allow(method).to receive(:parameters).and_return([[:key, :a]])
      matcher = KeywordParameterMatchers::HaveKeywordParameter.new(
        :a
      )

      expect {
        matcher.matches?(method)
      }.to change {
        matcher.failure_message_when_negated
      }.to(
        'expected "a" not to have a keyword parameter in example_method ' \
          'parameter list [[:key, :a]]'
      )
    end
  end
end
