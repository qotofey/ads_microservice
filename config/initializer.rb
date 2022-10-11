# frozen_string_literal: true

module Initializer
  extend self

  def run
    # initialize_config
    # initialize_database
    initialize_application
  end

  private

  def initialize_config; end

  def initialize_database
    require_file('config/sequel')
  end

  def initialize_application
    require_file('config/application')
  end

  def root
    File.expand_path('..', __dir__)
  end

  def require_file(path)
    require File.join(root, path)
  end

  def require_dir(path)
    path = File.join(root, path)
    
    Dir["#{root}/**/*.rb"].each { |file| require file }
  end
end
