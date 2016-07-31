require 'rack/test'
require 'json'

require_relative '../app'

RSpec.describe App do
  include Rack::Test::Methods

  def app
    described_class.new
  end

  describe 'GET /anagram' do
    let(:word) { 'crepitus' }
    let(:anagrams) { %w(cuprites pictures piecrust) }

    before do
      get "/#{word}"
    end

    def json_response
      JSON.parse(last_response.body)
    end

    specify { expect(last_response).to be_ok  }
    specify { expect(last_response.headers['Content-Type']).to eq('application/json') }
    specify { expect { json_response }.to_not raise_error }
    specify { expect(json_response[word]).to eq(anagrams) }

    context 'when word is unknown' do
      let(:word) { 'sdfwehrtgegfg' }

      specify { expect(json_response[word]).to eq([]) }
    end

    context 'when multiple words are requested' do
      let(:word2) { 'paste' }
      let(:anagrams2) { %w(pates peats septa spate tapes tepas) }

      before do
        get "/#{[word, word2].join(',')}"
      end

      specify { expect(json_response[word]).to eq(anagrams) }
      specify { expect(json_response[word2]).to eq(anagrams2) }
    end
  end
end
