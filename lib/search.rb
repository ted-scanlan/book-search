require_relative '../api_key'
require_relative 'result'


require 'json'
require 'net/http'

class Search   # write in email - made api search into its own class. this can also deal with formatting the reponse and displaying the results. it made sense as now in the main book search class when we make the call to search it creates a new search class rather than having to wipe clean the results of the previous search.
  attr_reader :result, :response

  def initialize
    @result = Result.new
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
        # sort_results(@response)
        @result.sort(@response)

      else
        top_5 = res[0..4]
        top_5.each {|book|
          @result.addBook(book)}
        end

      end
    end


end
