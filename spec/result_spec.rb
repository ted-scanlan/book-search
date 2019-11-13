require 'result'

require 'mock_object'


describe Result do
  
  describe '#sort' do
    it 'sorts the api response' do
      subject = described_class.new
      subject.sort($mock_object)
      expect(subject.results.length).to eq 5
    end

end

end
