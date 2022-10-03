# frozen_string_literal: true

require_relative 'models/ad'

module AdsMicroservice::Models
  module SetCreatedAt
    def before_create
      self.created_at ||= Time.now
      super
    end
  end

  #Ad.send(:include, SetCreatedAt)
end
