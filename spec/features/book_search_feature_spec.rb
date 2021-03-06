require 'spec_helper'
require 'book_search'

Dir.chdir(File.dirname(__FILE__))
require 'webmock'
include WebMock::API

WebMock.enable!

describe BookSearch do

  describe '#make_call' do
    it 'returns a result for a book search' do
      json_response = File.open("../fixtures/book_results.json")
      stub_request(:get, "https://www.googleapis.com/books/v1/volumes?q=intitle:#{@title}&key=#{API_KEY}").
      to_return(status: 200, body: json_response)
      subject = described_class.new
      allow($stdin).to receive(:gets).and_return('surfing')
      subject.start
      expect(subject.search.result.results.length).to eq 5
      # expect(STDOUT).to have_received(:puts).with "Title: abc\nAuthor: Jane\nPublisher: Publishing CO"

    end
  end

  describe 'saving a book' do
    let(:book_search) { described_class.new}
    it 'should save a book to a users book list ' do

      subject = described_class.new
      allow($stdin).to receive(:gets).and_return('surfing')
      subject.get_search_term
      subject.make_call
      subject.book_list.save_book(subject.search.result.results[0])
      expect(subject.book_list.contents.length).to eq 1

    end

    it "displays error if search result is nil" do

      json_response = File.open("../fixtures/book_results.json")

      stub_request(:get, "https://www.googleapis.com/books/v1/volumes?q=intitle:#{@title}&key=#{API_KEY}").
      to_return(status: 200, body: [{"kind"=>"books#volumes", "totalItems"=>0}])

      #  subject = described_class.new
      #  allow($stdin).to receive(:gets).and_return('dbhjksbhkbdhksbdk')
      #  subject.get_search_term
      #  subject.make_call
      #  allow(STDOUT).to receive(:puts)
      # expect(STDOUT).to have_received(:puts).with "No matches"

    end



  end
end
