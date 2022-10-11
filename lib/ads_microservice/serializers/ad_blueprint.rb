# frozen_string_literal: true

class AdBlueprint < Blueprinter::Base
  identifier :id

  fields :title, :description

  view :normal do
    fields :title, :description
  end

  view :extended do
    fields :user_id, :lat, :lon, :city, :created_at, :updated_at
  end
end
