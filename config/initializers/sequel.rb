# frozen_string_literal: true

Sequel.connect('sqlite://ads_microservice.db')

Sequel::Model.plugin :timestamps, update_on_create: true

Sequel.default_timezone = :utc
