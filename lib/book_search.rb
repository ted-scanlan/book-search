require_relative 'search'
require_relative 'book_list'
require_relative 'message'


class BookSearch
  attr_reader :title, :results, :book_list




  def initialize

    @title
    @book_list = BookList.new
    @results =[]
    @message = Message.new

  end

  

  def start

    @message.welcome
    input = $stdin.gets.chomp

    if input == "RL"
      if !@book_list.contents.empty?
        show_list
      else
        puts `clear`
        puts "You havn't saved any books yet! Press R to return"
        navigate
      end
    else
      @title = input
      make_call
    end
  end

  def show_list

    @book_list.display_list  #the actual funcitonality happens in the book list class. we can just invoke it from here.
    navigate

  end



  def make_call(search = Search.new)
    @search = search
    # @results.clear   results are cleared now because each time you call it it calls a new instance of the search class. (say in email)
    @search.book_search_api(@title)
    @search.display_results
      choose_book

    end


    def choose_book
      puts ""
      puts "Please enter the number of the title you'd like to add to your reading list, or enter 'R' to search again"
      puts""
      input = $stdin.gets.chomp
      input_no = input.to_i
      if input_no >= 1 && input_no <= 5
        @book_list.save_book(@search.results[input_no -1])
        puts""
        puts "'#{@search.results[input_no -1].title}' has been added to your list. Press R to search again, or RL to view your list."
        navigate
      elsif input == "R"
        start
      else
          @message.incorrect_input

    end

    end


    def navigate
      loop do
      input = $stdin.gets.chomp

      if input == 'R'
        start
        return
      elsif input == 'RL'
        show_list
        return
      elsif input == 'exit'
        Kernel.exit(true)
      else
        @message.incorrect_input
        next
      end
    end
  end



  end
