require 'datastore'

describe Datastore do
  subject(:datastore) { described_class.new }
  let(:k)       { "somekey" }
  let(:v)       { "somevalue" }


    it 'responds as empty new object' do
      datastore = Datastore.new
      expect(datastore.somehash).to be_empty
    end

    before do
      datastore.add(k, v)
    end

    it 'adds key and value to somehash' do
      expect(datastore.somehash).to include({"somekey"=>"somevalue"})
    end

    it 'returns a value for a key' do
      expect(datastore.rtn(k)).to eq (v)
    end

    it 'handles nil key gracefully' do
      expect(datastore.rtn(nil)).to be nil
    end
end
