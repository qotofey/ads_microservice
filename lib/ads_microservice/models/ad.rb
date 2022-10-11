# frozen_string_literal: true

Sequel::Model.plugin :validation_helpers

class Ad < Sequel::Model(Sequel.connect('sqlite://ads_microservice.db')[:ads])
  def validate
    super
    validates_presence :title, message: 'title field is required'
    validates_presence :description, message: 'description field is required'
    validates_presence :city, message: 'city field is required'
  end
end
