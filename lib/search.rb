require_relative '../api_key'
require_relative './book'

require 'json'
require 'net/http'

class Search   # write in email - made api search into its own class. this can also deal with formatting the reponse and displaying the results. it made sense as now in the main book search class when we make the call to search it creates a new search class rather than having to wipe clean the results of the previous search.
  attr_reader :results, :response

  def initialize()
    @results = []
    @response

  end



  def book_search_api(title)

    uri = URI("https://www.googleapis.com/books/v1/volumes?q=intitle:#{title}&key=#{API_KEY}")
    Net::HTTP.start(uri.host, uri.port) do |http|
      res = Net::HTTP.get(uri)

      if res.is_a?(String)
        @response = JSON.parse(res)

        if @response['items'].nil?
          return
        end
        sort_results(@response)

      else
        top_5 = res[0..4]
        top_5.each {|book|
          @results << Book.new(book['volumeInfo']["title"], book['volumeInfo']["authors"][0], book['volumeInfo']["publisher"] )}
        end

      end
    end



 def sort_results(results)

   top_5 = results['items'][0..4]
   top_5.each {|book|
     book['volumeInfo']["title"].nil? ? (title = "no info available") : (title = book['volumeInfo']["title"])
     book['volumeInfo']["authors"].nil? ? (author = "no info available") : (author = book['volumeInfo']["authors"][0])
     book['volumeInfo']["publisher"].nil? ? (company = "no info available") : (company = book['volumeInfo']["publisher"])

     @results << Book.new(title, author, company)
 }

 end


def display_results
  puts "Top 5 Results:"
  puts ""
  @results.each_with_index {|book, i|

    STDOUT.puts "#{i + 1}:
    Title: #{book.title}
    Author: #{book.author}
    Publisher: #{book.company ? "#{book.company}" : "Information currently unavailable"}" }


  end



end
