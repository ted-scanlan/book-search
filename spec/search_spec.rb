require 'search'
require 'mock_object'

describe Search do
  let(:search) { described_class.new }

  describe '#initialize' do
    it 'has a result property that is an instance of result' do
      expect(search.result).to be_an_instance_of(Result)
    end
  end
end
