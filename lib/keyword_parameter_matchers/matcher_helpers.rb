module KeywordParameterMatchers
  module MatcherHelpers
    def have_keyword_parameter(expected)
      HaveKeywordParameter.new(expected)
    end

    def have_optional_keyword_parameter(expected)
      HaveOptionalKeywordParameter.new(expected)
    end

    def have_required_keyword_parameter(expected)
      HaveRequiredKeywordParameter.new(expected)
    end
  end
end
