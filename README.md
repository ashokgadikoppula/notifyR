# NotifyR

NotifyR is a nice gem to send exception notifications

## Installation

Add this line to your application's Gemfile:

    gem 'notifyR'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install notifyR

## Usage
```ruby
	## Assuming smtp settings have already been setup in your application 
	NotifyR.notify_exception_to_developers(from_address, to_address, subject(optional), exception(optional), server_name(optional)).deliver

	## example
	NotifyR.notify_exception_to_developers("example@example.com", "developer1@example.com, developer2@example.com", "Error in User model", exception, "Production Server").deliver
	## here exception in an object of Exception class
```

## Contributing

1. Fork it ( https://github.com/ashokgadikoppula/notifyR/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
