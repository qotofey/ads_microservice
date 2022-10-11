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
            ad_id = Ad.insert(params)
            ad = Ad.first(id: ad_id)

            AdBlueprint.render(ad)
          end
        end

        r.is Integer do |ad_id|
          r.get do
            ad = Ad.first(id: ad_id)

            return if ad.nil?

            AdBlueprint.render(ad, root: :data, meta: {}, links: {})
          end
        end
      end
    end

    private

    def params
      Oj.load(request.body.read)
    end
  end
end
