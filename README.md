# ClockAngleCalculator

This gem provides functionality to accept a DateTime or Time object and return the angle between the hour and minute hands if the time were modeled on an analog clock.  This gem also provides functionality to accept an hour and minute value directly.  The angle returned will always be less than or equal to 180.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'clock_angle_calculator'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install clock_angle_calculator

## Usage

The gem provides a module named ClockAngleCalculator which has two public methods available for use.

calculate_angle_datetime(time) accepts a DateTime or Time object and returns a value between 0 and 180.

calculate_angle(hour, minute) accepts hour and minute values and returns a value between 0 and 180.

To call the methods in your application (example):
ClockAngleCalculator.calculate_angle(1, 15) #returns 52.5

ClockAngleCalculator.calculate_angle_datetime(@resource.created_at) #returns value based on the created_at tiemstamp for your resource.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake rspec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/apleroy/clock_angle_calculator.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

