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
Smtp settings must be setup

NotifyR.notify_exception(from_address, to_address, subject, exception, server_name)

from_address: Must be a email string
to_address: Must be a email string comma separated in case of muliple
subject: optional string(optional)
exception: Exception object(optional)
server_name: optional string(optional)


## Contributing

1. Fork it ( https://github.com/ashokgadikoppula/notifyR/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
