module KeywordParameterMatchers
  class HaveRequiredKeywordParameter
    def initialize(expected)
      @expected = expected
    end

    def matches?(actual)
      @actual = actual

      actual.parameters.any? { |type, name|
        :keyreq == type && name == expected
      }
    end

    def failure_message
      "expected \"#{expected}\" to be a required keyword parameter in " \
        "example_method parameter list #{parameter_list.inspect}"
    end

    def failure_message_when_negated
      "expected \"#{expected}\" not to be an required keyword " \
        "parameter in example_method parameter list " \
        "#{parameter_list.inspect}"
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
