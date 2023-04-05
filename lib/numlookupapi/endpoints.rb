module Numlookupapi
  class Endpoints

    attr_writer :apikey

    def initialize(options = {})
      @apikey = options[:apikey] || Numlookupapi.configuration.apikey
    end

    def status()
      @result = call_api('status')
    end

    def validate(phone_number, country_code = '')
      @result = call_api(sprintf('validate/%s?country_code=%s', phone_number, country_code))
    end

    def call_api(route)
      begin
        @response = RestClient.get "#{Numlookupapi::BASE_URL}#{route}&apikey=#{@apikey}", { 'Accept' => 'application/json' }
      rescue RestClient::ExceptionWithResponse => e
        @data = e.response
      end
    end
  end
end
