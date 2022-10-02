# frozen_string_literal: true

require 'oj'
require 'sequel'
require 'sqlite3'
require 'blueprinter'
require_relative 'ads_microservice/application'
require_relative 'ads_microservice/config'
require_relative 'ads_microservice/models/ad'
require_relative 'ads_microservice/serializers/ad_blueprint'

module AdsMicroservice; end
