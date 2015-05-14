# Mongoid diff

**WORK IN PROGRESS**

Service producing diff of two Mongoid models.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'mongoid-diff'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install mongoid-diff

## Usage

```ruby
require 'mongoid/diff'

class MyMongoidModel
  include Mongoid::Document
  field :name, type: String
  field :other, type: CustomDataType
end

x = MyMongoidModel.new(name: "foo", other: "goofy")
y = MyMongoidModel.new(name: "bar", other: "not goofy")

Mongoid::Diff.compare(x, y) # => {
  name: …, # somewhere it should indicate the original and the Diff class detected/used
  other: …, # somewhere it should indicate the original and the Diff class detected/used
}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/tomasc/mongoid-diff/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
