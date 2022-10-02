# frozen_string_literal: true

require 'roda'
require_relative 'api'

module AdsMicroservice
  class Application < Roda
    plugin :environments

    plugin :not_found do
      '<h1>Not Found</h1>'
    end

    route do |r|
      r.root do
        response['Content-Type'] = 'text/plain'
        ad = Ad.new
        "App started...\nEnvironment: \"#{1 + 3}\""
      end

      r.on :api do
        r.run API
      end

      r.is :ads do
        r.get do
          response['Content-Type'] = 'text/plain'

          'Get List of Ads'
        end

        r.post do
          response['Content-Type'] = 'text/plain'

          'Created Ad'
        end
      end
    end
  end
end
