# frozen_string_literal: true

require_relative 'config/environment'

# run Application.freeze.app # for roda gem
map '/api/v1' do
  run AdRoutes
end
