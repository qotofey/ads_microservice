# frozen_string_literal: true

require 'sequel'

class Ad < Sequel::Model(Sequel.connect('sqlite://ads_microservice.db')[:ads])
end
