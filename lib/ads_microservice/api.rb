# frozen_string_literal: true

require 'roda'

module AdsMicroservice
  class API < Roda
    plugin :all_verbs
    plugin :json

    route do |r|
      r.on 'ads' do
        r.is do
          r.get { { response_message: 'from: GET (all)' } }
        end

        r.is Integer do |ad_id|
          r.get do
            { ad_id: ad_id }
          end

          r.patch do
            # response.status = 403

            { response_message: 'from: PATCH' }
          end

          r.put do
            # response.status = 403

            { response_message: 'from: PUT' }
          end

          r.delete do
            # response.status = 204

            { response_message: 'from: DELETE' }
          end
        end
      end
    end
  end
end
