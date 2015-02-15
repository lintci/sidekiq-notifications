# Sidekiq::Notifications

[![Circle CI](https://circleci.com/gh/lintci/sidekiq-notifications.svg?style=svg)](https://circleci.com/gh/lintci/sidekiq-notifications)

Adds ActiveSupport/Notifications support to sidekiq.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sidekiq-notifications'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sidekiq-notifications

## Usage

Provides two events to subscribe to: `app.worker.enqueue` and `app.worker.perform` with ActiveSupport::Notifications. The payload contains a `title` like `MyWorker#perform_async` and `MyWorker#perform`. The payload also contains the `job` information directly from sidekiq.

## Contributing

1. Fork it ( https://github.com/lintci/sidekiq-notifications/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
