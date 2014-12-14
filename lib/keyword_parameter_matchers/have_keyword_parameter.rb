module KeywordParameterMatchers
  class HaveKeywordParameter
    def initialize(expected)
      @expected = expected
    end

    def matches?(actual)
      @actual = actual

      actual.parameters.any? { |type, name|
        [:key, :keyreq].include?(type) && name == @expected
      }
    end

    def failure_message
      "expected \"#{expected}\" to a keyword parameter in #{method_name} " \
        "parameter list #{parameter_list.inspect}"
    end

    def failure_message_when_negated
      "expected \"#{expected}\" not to a keyword parameter in #{method_name} " \
        "parameter list #{parameter_list.inspect}"
    end

    private
    def actual
      NullMethod.new_if_nil(@actual)
    end

    def expected
      @expected
    end

    def method_name
      actual.name
    end

    def parameter_list
      actual.parameters
    end
  end
end
