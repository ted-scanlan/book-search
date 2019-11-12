
class Message

  def welcome
    puts `clear`
    puts ""
    puts ""
    print "Please enter the title you'd like to search for (or RL to view your reading list): "
    puts ""
    puts ""

  end


  def incorrect_input
    puts""
    puts "incorrect input please try again"  # should this be print?
    puts""


  end

  def empty_list
    puts `clear`
    puts "You havn't saved any books yet! Press R to return"

  end

  def no_matches

    puts `clear`
    puts "No matches, press 'R' to try again"

  end

  def make_choice
    puts ""
    puts "Please enter the number of the title you'd like to add to your reading list, or enter 'R' to search again"
    puts""
  end

  def saved(title)
    puts""
    puts "'#{title}' has been added to your list. Press R to search again, or RL to view your list."

  end


end
