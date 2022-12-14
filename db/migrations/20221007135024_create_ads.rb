# frozen_string_literal: true

Sequel.migration do
  change do
    create_table(:ads) do
      primary_key :id, type: :Bignum

      String :title, null: false
      Text :description, null: false
      String :city, null: false
      Float :lat
      Float :lon
      Integer :user_id
      DateTime :created_at, null: false
      DateTime :updated_at, null: false

      index %i[user_id], name: :index_ads_on_user_id
    end
  end
end
