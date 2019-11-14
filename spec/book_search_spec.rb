require 'book_search'

describe BookSearch do
  let(:booksearch) { described_class.new }

  before(:each) do
    allow(STDOUT).to receive(:puts)
    allow(booksearch).to receive(:loop)
  end

  describe '#initialize' do
   it 'has a Book list property that is an instance of book list' do
     expect(booksearch.book_list).to be_an_instance_of(BookList)
   end

   it 'initialises with an instance of message' do
     expect(booksearch.message).to be_an_instance_of(Message)
   end
 end

 describe'#get_search_term' do
   it 'should get a title' do
     allow($stdin).to receive(:gets).and_return('harry potter')
     title = $stdin.gets
     expect(title).to eq('harry potter')
   end

   it 'should save a title' do
     subject = described_class.new
     allow($stdin).to receive(:gets).and_return('surfing')
     subject.get_search_term
     expect(subject.title).to eq('surfing')
   end
 end

describe'#start' do
  before(:each) do
    allow(booksearch).to receive(:get_search_term)
    allow(booksearch).to receive(:make_call)
  end

  it 'calls the get search term method' do
     booksearch.start
    expect(booksearch).to have_received(:get_search_term)
  end

  it 'calls the get make call method' do
     booksearch.start
    expect(booksearch).to have_received(:make_call)
  end
end

  describe '#make_call' do
    before(:each) do
        allow(booksearch).to receive(:choose_book)
    end

    it 'calls the choose_book method' do
       booksearch.make_call
      expect(booksearch).to have_received(:choose_book)
    end

  end
end
