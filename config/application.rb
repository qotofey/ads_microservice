# frozen_string_literal: true

class Application < Sinatra::Base
  configure do
    register Sinatra::Namespace

    set :app_file, File.expand_path('../config.ru', __dir__)
  end

  configure :develoopment do
    register Sinatra::Reloader

    set :show_exception, false
  end

  get '/' do
    json status: :ok
  end
end

# class application < Roda
#   plugin :environments
#   plugin :slash_path_empty
#
#   route do |r|
#     r.root do
#       response['Content-Type'] = 'text/plain'
#
#       "App started...\nEnvironment: \"#{ENV.fetch('RACK_ENV', nil)}\"\n" \
#         "PAGE_SIZE: #{Settings.pagination.page_size}"
#     end
#
#     r.on :api do
#       response['Content-Type'] = 'application/json'
#
#       r.on :v1 do
#         r.on :ads do
#           r.is do
#             r.get do
#               { path: 'GET: /api/v1/ads' }.to_json
#             end
#
#             r.post do
#               { path: 'POST: /api/v1/ads' }.to_json
#             end
#           end
#         end
#       end
#     end
#   end
# end
