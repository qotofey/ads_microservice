# frozen_string_literal: true

class AdSerializer
  include JSONAPI::Serializer

  set_type :ads

  attributes :title, :description, :city, :lat, :lon
end
