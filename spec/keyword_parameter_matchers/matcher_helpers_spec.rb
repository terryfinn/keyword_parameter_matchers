require 'spec_helper'

describe KeywordParameterMatchers::MatcherHelpers do
  describe '#have_keyword_parameter' do
    it 'returns a HaveKeywordParameter matcher' do
      dummy_object = instance_double('DummyObject')
      dummy_object.extend(KeywordParameterMatchers::MatcherHelpers)

      expect(
        dummy_object.have_keyword_parameter(:a)
      ).to be_kind_of(
        KeywordParameterMatchers::HaveKeywordParameter
      )
    end

    it 'sets the expected value' do
      dummy_object = instance_double('DummyObject')
      dummy_object.extend(KeywordParameterMatchers::MatcherHelpers)

      expect(
        dummy_object
        .have_keyword_parameter(:a)
        .send(:expected)
      ).to eq(:a)
    end
  end

  describe '#have_optional_keyword_parameter' do
    it 'returns a HaveOptionalKeywordParameter matcher' do
      dummy_object = instance_double('DummyObject')
      dummy_object.extend(KeywordParameterMatchers::MatcherHelpers)

      expect(
        dummy_object.have_optional_keyword_parameter(:a)
      ).to be_kind_of(
        KeywordParameterMatchers::HaveOptionalKeywordParameter
      )
    end

    it 'sets the expected value' do
      dummy_object = instance_double('DummyObject')
      dummy_object.extend(KeywordParameterMatchers::MatcherHelpers)

      expect(
        dummy_object
        .have_optional_keyword_parameter(:a)
        .send(:expected)
      ).to eq(:a)
    end
  end

  describe '#have_required_keyword_parameter' do
    it 'returns a HaveRequiredKeywordParameter matcher' do
      dummy_object = instance_double('DummyObject')
      dummy_object.extend(KeywordParameterMatchers::MatcherHelpers)

      expect(
        dummy_object.have_required_keyword_parameter(:a)
      ).to be_kind_of(
        KeywordParameterMatchers::HaveRequiredKeywordParameter
      )
    end

    it 'sets the expected value' do
      dummy_object = instance_double('DummyObject')
      dummy_object.extend(KeywordParameterMatchers::MatcherHelpers)

      expect(
        dummy_object
        .have_required_keyword_parameter(:a)
        .send(:expected)
      ).to eq(:a)
    end
  end
end
