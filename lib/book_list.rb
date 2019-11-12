class BookList
  attr_reader :contents

  def initialize

    @contents = []

  end

  def save_book(book)
    @contents << book

  end

  def display_list

      puts `clear`
      puts""
      puts "Your reading list:"
      puts""
        @contents.map {|book|

       STDOUT.puts "Title: #{book.title}\nAuthor: #{book.author}\nPublisher: #{book.company}"
       puts""
    }
      puts "press R to return"



  end



end
