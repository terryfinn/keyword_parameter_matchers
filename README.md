# Keyword Parameter Matchers

Simple matchers for method keyword parameters.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'keyword_parameter_matchers'
```

And then execute:
```shell
$ bundle
```

Or install it yourself as:
```shell
$ gem install keyword_parameter_matchers
```

## Usage

```ruby
require 'keyword_parameter_matchers/rspec'


```

## Usage

```ruby
require 'keyword_parameter_matchers/rspec'

class Example
  def self.example_class_method(a:, b: 'B')
  end

  def example_instance_method(a:, b: 'B')
  end
end

describe Example
  describe '.example_class_method' do
    it 'requies keyword a' do
      expect(
        Example.method(:example_class_method)
      ).to have_required_keyword(:a)
    end

    it 'has optional keyword b' do
      expect(
        Example.method(:example_class_method)
      ).to have_optional_keyword(:b)
    end
  end

  describe '#example_instance_method' do
    it 'requies keyword a' do
      expect(
        Example.instance_method(:example_instance_method)
      ).to have_required_keyword(:a)
    end

    it 'has optional keyword b' do
      expect(
        Example.instance_method(:example_instance_method)
      ).to have_optional_keyword(:b)
    end
  end
end
```

## Contributing

1. Fork it ( https://github.com/terryfinn/keyword_parameter_matchers/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
