require 'rack/test'

require_relative '../app'

RSpec.describe App do
  include Rack::Test::Methods

  def app
    described_class.new
  end

  describe 'GET /anagram' do
    let(:word) { 'crepitus' }

    before do
      get "/#{word}"
    end

    specify { expect(last_response).to be_ok  }
  end
end
