require 'anagrams'

RSpec.describe Anagrams do
  describe '.hash_for' do
    let(:word) { 'crepitus' }
    let(:hashed) { 'ceiprstu' }
    subject { Anagrams.hash_for(word) }

    it { is_expected.to eq(hashed) }
  end

  describe '.bucket_for' do
    let(:hash) { 'ceiprstu' }
    let(:bucket) { %w(crepitus cuprites pictures piecrust) }
    subject { Anagrams.bucket_for(hash) }

    it { is_expected.to eq(bucket) }
  end

  describe '.for' do
    let(:word) { 'crepitus' }
    let(:anagrams) { %w(cuprites pictures piecrust) }
    subject { Anagrams.for(word) }

    it { is_expected.to eql(anagrams) }

    context 'when word is unknown' do
      let(:word) { 'sdfwehrtgegfg' }

      it { is_expected.to eql([]) }
    end
  end
end
