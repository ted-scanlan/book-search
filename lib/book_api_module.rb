require_relative '../api_key'

require 'json'
require 'net/http'

module API

def book_search_api(title)

  uri = URI("https://www.googleapis.com/books/v1/volumes?q=intitle:#{title}&key=#{API_KEY}")

  Net::HTTP.start(uri.host, uri.port) do |http|
  res = Net::HTTP.get(uri)

  return res

end
end
