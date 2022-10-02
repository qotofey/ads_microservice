# frozen_string_literal: true

class BaseRepository
  DB = Sequel.connect('sqlite://ads_microservice.db')

  private

  def primary_key
    :id
  end
end
