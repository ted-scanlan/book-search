require_relative 'search'
require_relative 'book_list'
require_relative 'message'


class BookSearch
  attr_reader :title, :book_list, :search, :message

  def initialize
    @book_list = BookList.new
    @message = Message.new
  end

  def start
    @message.welcome
    get_search_term
    make_call
  end

  def show_list
    !@book_list.contents.empty? ? @book_list.display_list : @message.empty_list
    navigate
  end

  def get_search_term
    input = $stdin.gets.chomp
    input == "RL" ? show_list : (@title = input)
  end

  def make_call(search = Search.new)
    @search = search
    execute_search = @search.book_search_api(@title)
    if execute_search.nil?
      @message.no_matches
      navigate
     else
      @search.result.display_results
      choose_book
    end
  end

  def choose_book
    @message.make_choice
    input = $stdin.gets.chomp
    input_no = input.to_i
    if input_no >= 1 && input_no <= 5
      save_book(input_no)
      navigate
    elsif input == 'R'
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

  def save_book(choice)
    @book_list.save_book(@search.result.results[choice - 1])
    @message.saved(@search.result.results[choice - 1].title)
  end

  end
