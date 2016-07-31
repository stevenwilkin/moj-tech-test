require 'anagrams'

RSpec.describe Anagrams do
  describe '.hash_for' do
    let(:word) { 'crepitus' }
    let(:hashed) { 'ceiprstu' }
    subject { Anagrams.hash_for(word) }

    it { is_expected.to eq(hashed) }
  end
end
