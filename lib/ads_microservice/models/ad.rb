# frozen_string_literal: true

class Ad < Sequel::Model(Sequel.connect('sqlite://ads_microservice.db')[:ads])
end
