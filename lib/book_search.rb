

class BookSearch


  def initialize

  @title
  @results =[]    #make results own class

end

def get_title

  welcome_message
  input = $stdin.gets.chomp

  $stdin.gets.chomp

end



def welcome_message
  puts `clear`
  puts ""
  puts ""
  print "Please enter the title you'd like to search (or RL to view your reading list): "
  puts ""
  puts ""


end

def make_call

  @results.clear
  book_search_api(@title)
  puts "Top 5 Results:"
  puts ""
  @results.each_with_index {|book, i|
   puts "#{i + 1}:
    Title: #{book.title}
    Author: #{book.author}
    Publisher: #{book.company ? "#{book.company}" : "Information currently unavailable"}" }
    book_save_menu

end

def navigate
  input = $stdin.gets.chomp
  if input == 'R'
    start
  elsif input == 'RL'
    show_list
  elsif input == 'exit'
    Kernel.exit(true)
  else
    print "incorrect input"
  end
end



end
