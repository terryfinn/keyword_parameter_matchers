require 'keyword_parameter_matchers'

if RSpec.respond_to?(:configure)
  RSpec.configure do |config|
    config.include(KeywordParameterMatchers::MatcherHelpers)
  end
end
