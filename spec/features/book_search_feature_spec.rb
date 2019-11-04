require 'spec_helper'
require 'book_search'



describe BookSearch do

describe 'saving a book' do
  let(:book_search) { described_class.new}
  it 'should save a book to a users book list ' do

    subject = described_class.new
   allow($stdin).to receive(:gets).and_return('surfing')
   subject.get_title
   subject.make_call
   subject.book_list.save_book(subject.results[0])
   expect(subject.book_list.contents.length).to eq 1

  end

  it "display 'info not available' if search result is nil" do

   #  subject = described_class.new
   # allow($stdin).to receive(:gets).and_return('flowers')
   # subject.get_title
   # subject.make_call
   # subject.book_list.save_book(subject.results[1])
   # p subject.book_list
   # expect(subject.book_list.contents[0].company).to eq "info not available"
   subject = described_class.new
   allow($stdin).to receive(:gets).and_return('flower')
   subject.start




  end



end
end
