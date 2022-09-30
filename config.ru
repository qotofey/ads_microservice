# frozen_string_literal: true

require 'rack'
require_relative 'lib/ads_microservice'

class AppAds
  def self.call(env)
    [200, { 'Content-Type' => 'text/plain' }, ["Hello, world!\n #{JSON.parse(env)}"]]
  end
end

run AdsMicroservice::Application.freeze.app
