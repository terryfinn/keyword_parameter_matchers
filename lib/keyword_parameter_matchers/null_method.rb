module KeywordParameterMatchers
  class NullMethod
    def self.new_if_nil(method)
      if method.nil?
        new
      else
        method
      end
    end

    def name
      ''
    end

    def parameters
      []
    end
  end
end
