require_relative './book'


class Result
attr_reader :results

  def initialize
    @results = []
  end

  def addBook(book)
    new_book = Book.new(book['volumeInfo']["title"], book['volumeInfo']["authors"][0], book['volumeInfo']["publisher"])
    @results << new_book
  end

  def sort(response)
    top_5 = response['items'][0..4]
    top_5.each {|book|
      book['volumeInfo']["title"].nil? ? (title = "no info available") : (title = book['volumeInfo']["title"])
      book['volumeInfo']["authors"].nil? ? (author = "no info available") : (author = book['volumeInfo']["authors"][0])
      book['volumeInfo']["publisher"].nil? ? (company = "no info available") : (company = book['volumeInfo']["publisher"])

      @results << Book.new(title, author, company)   # this needs to go through the proper addbook method  but i've got 2 different methods depending on if test or not.
    }
  end

  def display_results
    STDOUT.puts "Top 5 Results:"
    STDOUT.puts ""
    @results.each_with_index {|book, i|

      STDOUT.puts "#{i + 1}:
      Title: #{book.title}
      Author: #{book.author}
      Publisher: #{book.company ? "#{book.company}" : "Information currently unavailable"}" }
    end

  end
