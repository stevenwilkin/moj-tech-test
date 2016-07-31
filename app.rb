require 'sinatra'
require 'json'

require_relative 'lib/anagrams'

class App < Sinatra::Base
  get '/:word' do
    content_type :json
    words = params[:word].split(',')

    anagrams = words.reduce({}) do |results, word|
      results[word] = Anagrams.for(word)
      results
    end

    anagrams.to_json
  end
end
