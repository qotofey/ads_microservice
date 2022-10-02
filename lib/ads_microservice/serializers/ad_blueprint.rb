# frozen_string_literal: true

class AdBlueprint < Blueprinter::Base
  identifier :id

  fields :title, :description, :user_id, :lat, :lon, :city, :created_at, :updated_at
end
