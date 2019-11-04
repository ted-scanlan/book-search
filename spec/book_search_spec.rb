require 'book_search'

Dir.chdir(File.dirname(__FILE__))
require 'webmock'
include WebMock::API

WebMock.enable!



describe BookSearch do

  describe'#get_title' do

    it 'should get a title' do

       allow($stdin).to receive(:gets).and_return('harry potter')
       title = $stdin.gets
       expect(title).to eq('harry potter')

    end

    it 'should save a title' do

    subject = described_class.new
   allow($stdin).to receive(:gets).and_return('surfing')
   subject.get_title
   expect(subject.title).to eq('surfing')
 end


  end

  describe '#make_call' do

      it 'should return results from book search' do
        json_response = File.open("./fixtures/book_results.json")
        stub_request(:get, "https://www.googleapis.com/books/v1/volumes?q=intitle:#{@title}&key=#{API_KEY}").
        to_return(status: 200, body: json_response)
        subject = described_class.new
       allow($stdin).to receive(:gets).and_return('surfing')
       subject.get_title
       subject.make_call
       expect(subject.results.length).to eq 5

      end
    end


end
