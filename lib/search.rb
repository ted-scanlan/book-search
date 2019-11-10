require_relative '../api_key'
require_relative './book'

require 'json'
require 'net/http'

class Search
  attr_reader :results

  def initialize()
    @results = []

  end



  def book_search_api(title)

    uri = URI("https://www.googleapis.com/books/v1/volumes?q=intitle:#{title}&key=#{API_KEY}")
    Net::HTTP.start(uri.host, uri.port) do |http|
      res = Net::HTTP.get(uri)

      if res.is_a?(String)
        response = JSON.parse(res)


   if response['items'].nil?
     puts `clear`
     puts "No matches, press 'R' to try again"
     navigate
   end

  top_5 = response['items'][0..4]
  top_5.each {|book|
    book['volumeInfo']["title"].nil? ? (title = "no info available") : (title = book['volumeInfo']["title"])
    book['volumeInfo']["authors"].nil? ? (author = "no info available") : (author = book['volumeInfo']["authors"][0])
    book['volumeInfo']["publisher"].nil? ? (company = "no info available") : (company = book['volumeInfo']["publisher"])

    @results << Book.new(title, author, company)
}

 else
   top_5 = res[0..4]

   top_5.each {|book|
    @results << Book.new(book['volumeInfo']["title"], book['volumeInfo']["authors"][0], book['volumeInfo']["publisher"] )}

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



end

end
