# frozen_string_literal: true

require 'rest-client'
require 'json'
require_relative "numlookupapi/version"
require_relative 'numlookupapi/endpoints'
require_relative 'numlookupapi/configuration'

module Numlookupapi
  BASE_URL = 'https://api.numlookupapi.com/v1/'

  class << self
    attr_accessor :configuration
  end

  def self.configure
    self.configuration ||= numlookupapi::Configuration.new
    yield(configuration)
  end
end
