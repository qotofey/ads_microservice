# frozen_string_literal: true

class Application < Roda
  plugin :environments

  route do |r|
    r.root do
      response['Content-Type'] = 'text/plain'

      "App started...\nEnvironment: \"#{ENV.fetch('RACK_ENV', nil)}\""
    end

    r.on :api do
      response['Content-Type'] = 'text/plain'

      r.on :v1 do
        r.on :ads do
          r.is do
            r.get do
              'GET: /api/v1/ads'
            end

            r.post do
              'POST: /api/v1/ads'
            end
          end
        end
      end
    end
  end
end