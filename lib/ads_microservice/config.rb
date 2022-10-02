# frozen_string_literal: true

module AdsMicroservice
  Blueprinter.configure do |config|
    config.generator = Oj
  end
end
