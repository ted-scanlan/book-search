class BookList
  attr_reader :contents

  def initialize

    @contents = []

  end

  def save_book(book)
    @contents << book

  end

  def display_list

    @contents.map {|book|
       puts""
       STDOUT.puts "Title: #{book.title}\nAuthor: #{book.author}\nPublisher: #{book.company}"
       puts""

    }



  end



end
