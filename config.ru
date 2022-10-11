# frozen_string_literal: true

require_relative 'config/environment'

# app -> (env) { [200, { 'Content-Type' => 'text/plain' }, ["Hello, world!\n #{JSON.parse(env)}"]
run Application.freeze.app