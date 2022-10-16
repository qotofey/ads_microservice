# frozen_string_literal: true

Sequel.connect("sqlite://#{Settings.db.database}.db")

# Sequel::Model.db.extesion(:pagination)

Sequel::Model.plugin :validation_helpers
Sequel::Model.plugin :timestamps, update_on_create: true

Sequel.default_timezone = :utc
