require 'sinatra'
require 'json'

class App < Sinatra::Base
  get '/:word' do
    content_type :json
    {}.to_json
  end
end
