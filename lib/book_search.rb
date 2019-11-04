

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
