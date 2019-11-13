require_relative 'result'
require 'dotenv'
Dotenv.load('.env')
API_KEY = ENV['API_KEY']

require 'json'
require 'net/http'

class Search
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
        return if @response['items'].nil?
        @result.sort(@response)
      else
        top_5 = res[0..4]
        top_5.each {|book| @result.addBook(book)}
      end
    end
  end
end
