require_relative '../api_key'
require_relative './book'

require 'json'
require 'net/http'

module API

  def book_search_api(title)

    uri = URI("https://www.googleapis.com/books/v1/volumes?q=intitle:#{title}&key=#{API_KEY}")
    
    Net::HTTP.start(uri.host, uri.port) do |http|
      res = Net::HTTP.get(uri)

      response = JSON.parse(res)

      top_5 = response['items'][0..4]
      top_5.each {|book|

        @results << Book.new(book['volumeInfo']["title"], book['volumeInfo']["authors"][0], book['volumeInfo']["publisher"])

      }
    end
  end
end
