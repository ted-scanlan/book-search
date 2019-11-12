require_relative 'search'
require_relative 'book_list'
require_relative 'message'


class BookSearch   # acts as a central platform to bring together and invoke the search and save functionalities.
  attr_reader :title, :results, :book_list

  def initialize

    @title
    @book_list = BookList.new
    @message = Message.new

  end



  def start

    @message.welcome
    input = $stdin.gets.chomp

    if input == "RL"
      if !@book_list.contents.empty?
        show_list
      else
        @message.empty_list
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
    if @search.response['totalItems'] == 0
      @message.no_matches
      navigate
    else
    @search.display_results
      choose_book
    end

    end


    def choose_book
      @message.make_choice
      input = $stdin.gets.chomp
      input_no = input.to_i
      if input_no >= 1 && input_no <= 5
        @book_list.save_book(@search.results[input_no -1])
        @message.saved(@search.results[input_no -1].title)
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
