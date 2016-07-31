require 'sinatra'
require 'json'

require_relative 'lib/anagrams'

class App < Sinatra::Base
  get '/:word' do
    content_type :json
    {
      params[:word] => Anagrams.for(params[:word])
    }.to_json
  end
end
