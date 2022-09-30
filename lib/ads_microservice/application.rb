# frozen_string_literal: true

require 'roda'
require_relative 'api'

module AdsMicroservice
  #   class API < Roda
  #     plugin :all_verbs
  #     plugin :json
  #
  #     route do |r|
  #       r.on 'ads' do
  #         r.is do
  #           r.get { { response_message: 'from: GET (all)' } }
  #         end
  #
  #         r.is Integer do |ad_id|
  #           r.get do
  #             { ad_id: ad_id }
  #           end
  #
  #           r.patch do
  #             #response.status = 403
  #
  #             { response_message: 'from: PATCH' }
  #           end
  #
  #           r.put do
  #             #response.status = 403
  #
  #             { response_message: 'from: PUT' }
  #           end
  #
  #           r.delete do
  #             #response.status = 204
  #
  #             { response_message: 'from: DELETE' }
  #           end
  #         end
  #       end
  #     end
  #   end

  class Application < Roda
    plugin :environments

    plugin :not_found do
      '<h1>Not Found</h1>'
    end

    route do |r|
      r.root do
        response['Content-Type'] = 'text/plain'

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
