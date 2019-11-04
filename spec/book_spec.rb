require 'book'

describe Book do

  describe '#initialize' do

    it 'initializes with a title' do
      subject = described_class.new("Harry Potter", "JK Rowling", "Publishing Co")
      expect(subject.title).to eq "Harry Potter"
    end
    it 'initializes with an author' do
      subject = described_class.new("Harry Potter", "JK Rowling", "Publishing Co")
      expect(subject.author).to eq "JK Rowling"
    end
    it 'initializes with a company' do
      subject = described_class.new("Harry Potter", "JK Rowling", "Publishing Co")
      expect(subject.company).to eq "Publishing Co"
    end


end
end
