# frozen_string_literal: true

ENV['RACK_ENV'] ||= 'development'

Rake.add_rakelib('rakelib/**')

require 'sequel'

task default: :s

desc 'start server'
task :s do
  system('rackup')
end

desc 'start console'
task :c do
  system('sequel sqlite://ads_microservice.db')
end

namespace :db do
  desc 'migrate db'
  task :load do
    puts 'Migration started...'

    # DB = Sequel.sqlite
    DB = Sequel.connect('sqlite://ads_microservice.db')

    DB.create_table :ads do
      primary_key :id
      String :title
      String :description
      String :city
      Float :lat
      Float :lon
      Integer :user_id
      DateTime :created_at
      DateTime :updated_at
    end

    puts 'Migration finished!'
  end
end
