# Kiwi

Ruby Gem to send a messages to [Kiwi](https://github.com/TotenDev/Kiwi)

[![Build Status](https://secure.travis-ci.org/TotenDev/Kiwi-LibRuby.png?branch=master)](http://travis-ci.org/TotenDev/Kiwi-LibRuby)

## Requirements

- Ruby ~> 1.9.2
- [LibC](http://www.gnu.org/software/libc/)

## Installation

Add this line to your application's Gemfile:

    gem 'tdev_kiwi'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install tdev_kiwi

## Usage

    require 'tdev_kiwi'
    
    message = TotenDev::Message.new
    message.worker = '<PATH_TO_WORKER>'
    message.args = '<ARGUMENTS>'
    
    queue = TotenDev::Kiwi.new <KEY_ID>
    queue.queue_id '<QUEUE_ID>'
    queue.send message

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Added some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

##License

[MIT](https://github.com/TotenDev/TDevShortener-LibRuby/blob/master/LICENSE)