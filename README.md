# OmniAuth::Rhomobile

[![Gem Version](http://img.shields.io/gem/v/omniauth-rhomobile.svg)][gem]
[![Build Status](http://img.shields.io/travis/rhomobile/omniauth-rhomobile.svg)][travis]
[![Dependency Status](http://img.shields.io/gemnasium/rhomobile/omniauth-rhomobile.svg)][gemnasium]
[![Code Climate](http://img.shields.io/codeclimate/github/rhomobile/omniauth-rhomobile.svg)][codeclimate]
[![Coverage Status](http://img.shields.io/coveralls/rhomobile/omniauth-rhomobile.svg)][coveralls]

[gem]: https://rubygems.org/gems/omniauth-rhomobile
[travis]: http://travis-ci.org/rhomobile/omniauth-rhomobile
[gemnasium]: https://gemnasium.com/rhomobile/omniauth-rhomobile
[codeclimate]: https://codeclimate.com/github/rhomobile/omniauth-rhomobile
[coveralls]: https://coveralls.io/r/rhomobile/omniauth-rhomobile


This gem is an [omniauth](https://github.com/intridea/omniauth) strategy for integrating an omniauth powered app with Rhomobile, a hosted identity service and Oauth 2 provider.

## Installation

Add this line to your application's Gemfile:

    gem 'omniauth-rhomobile'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install omniauth-rhomobile

## Usage

#### Configure The Strategy

Configuration is much the same as any other omniauth strategy.

    Rails.application.config.middleware.use OmniAuth::Builder do
      provider :rhomobile, "APP_ID", "APP_SECRET"
    end

With devise in your config/initializers/devise.rb:

	config.omniauth :rhomobile, "APP_ID", "APP_SECRET"

#### Read about Omniauth Usage

If you haven't already done so, be sure to read about [omniauth](https://github.com/intridea/omniauth). It contains important information about how to setup you app for using omniauth and its strategies.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
