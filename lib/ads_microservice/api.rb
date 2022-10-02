# frozen_string_literal: true

require 'roda'

module AdsMicroservice
  class API < Roda
    plugin :json

    plugin :not_found do
      { status: :not_found }
    end

    route do |r|
      r.on 'ads' do
        r.is do
          r.get do
            ads = Ad.all

            AdBlueprint.render(ads)
          end

          r.post do
            params = Oj.load(request.body.read)
            current_time = DateTime.now
            params.merge!(
              created_at: current_time,
              updated_at: current_time
            )
            ad_id = Ad.insert(params)
            ad = Ad.first(id: ad_id)

            AdBlueprint.render(ad)
          end
        end

        r.is Integer do |ad_id|
          r.get do
            ad = Ad.first(id: ad_id)
            
            return if ad.nil?

            AdBlueprint.render(ad)
          end
        end
      end
    end
  end
end
