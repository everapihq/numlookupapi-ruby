<p align="center">
<img src="https://app.numlookupapi.com/img/logo/numlookupapi.png" width="300"/>
</p>

# numlookupapi-ruby

numlookupapi-ruby is the official Ruby Wrapper around the [numlookupapi](https://app.numlookupapi.com) API.

## Installation

Add this line to your application's Gemfile:

    gem 'numlookupapi'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install numlookupapi

## Configuration

You will need your apikey to use numlookupapi, you can get one [https://app.numlookupapi.com/register](https://app.numlookupapi.com/register).

Create an instance and pass your api key like here:

    numlookup = numlookupapi::Endpoints.new(:apikey => 'APIKEY')

## Usage & Endpoints

Use the instance to call the endpoints

#### Status
Returns your current quota

    numlookup.status()

#### Validate
Checks the provided phone_number and returns all available information.

    numlookup.validate(phone_number, country_code = '')

  | Parameter | Data type | Mandatory | Description |
  | --- | ----------- | --- | ----------- |
  | phone_number | string, Path Parameter | yes | The phone number you want to query |
  | country_code | string | no | An ISO Alpha 2 Country Code |


You can find further information on https://numlookupapi.com/docs/

Bug reports and pull requests are welcome on GitHub at https://github.com/everapihq/numlookupapi-ruby. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/everapihq/numlookupapi-ruby/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the numlookupapi project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/everapihq/numlookupapi-ruby/blob/master/CODE_OF_CONDUCT.md).
