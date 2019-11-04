require 'book_list'

describe BookList do

  describe '#save_book' do
    let(:book) { double 'book'}
    it 'should save a book' do
      subject = described_class.new
      subject.save_book(book)
      expect(subject.contents.length).to eq 1

    end
  end

    describe '#display_list' do
      let(:book) { double 'book'}
      it 'should print a saved list' do
        allow(book).to receive(:title) { 'abc'}
        allow(book).to receive(:author) { 'Jane'}
        allow(book).to receive(:company) { 'Publishing CO'}

      allow(STDOUT).to receive(:puts)
      subject.save_book(book)
      subject.display_list
      expect(STDOUT).to have_received(:puts).with "Title: abc\nAuthor: Jane\nPublisher: Publishing CO"


    end



  end



end
