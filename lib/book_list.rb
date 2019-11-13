class BookList
  attr_reader :contents

  def initialize
    @contents = []
  end

  def save_book(book)
    @contents << book
  end

  def display_list
    STDOUT.puts `clear`
    STDOUT.puts''
    STDOUT.puts "Your reading list:"
    STDOUT.puts''
    @contents.map  do |book|
      STDOUT.puts "Title: #{book.title}\nAuthor: #{book.author}\nPublisher: #{book.company}"
      STDOUT.puts""
    end
    STDOUT.puts 'press R to return'
  end
end
