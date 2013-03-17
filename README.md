# Shy

A `Shy` is like a `Struct`, but `private` and instantiated with a `Hash`

## Installation

Add this line to your application's Gemfile:

	gem 'shy'

And then execute:

	$ bundle

Or install it yourself as:

	$ gem install shy

## Usage

	require 'shy'
	
	class Shush < Shy.new(:foo, :bar)
	  def to_s
	    "#{foo} and #{bar}"
	  end
	end
	
	shush = Shush.new(foo: "Foo", bar: "Bar")
	puts shush

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
