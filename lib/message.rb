
class Message

  def welcome
    STDOUT.puts `clear`
    STDOUT.puts ""
    STDOUT.puts ""
    STDOUT.puts "Please enter the title you'd like to search for (or RL to view your reading list): "
    STDOUT.puts ""
    STDOUT.puts ""

  end


  def incorrect_input
    STDOUT.puts""
    STDOUT.puts "incorrect input please try again"  # should this be print?
    STDOUT.puts""


  end

  def empty_list
    STDOUT.puts `clear`
    STDOUT.puts "You havn't saved any books yet! Press R to return"

  end

  def no_matches
    STDOUT.puts `clear`
    STDOUT.puts "No matches, press 'R' to try again"
  end

  def make_choice
    STDOUT.puts ""
    STDOUT.puts "Please enter the number of the title you'd like to add to your reading list, or enter 'R' to search again"
    STDOUT.puts""
  end

  def saved(title)
    STDOUT.puts""
    STDOUT.puts "'#{title}' has been added to your list. Press R to search again, or RL to view your list."
  end


end
