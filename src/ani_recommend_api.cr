require "json"
require "http/client"

class AniRecommendApi
  API_PATH = "api/v1"
  def initialize
    @headers = HTTP::Headers {
      "Content-Type" => "application/json",
      "User-Agent" => "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36"
    }
    uri = URI.parse("https://anirecommend.vercel.app")
    @http_client = HTTP::Client.new(uri)
  end

  def get_random_anime() : JSON::Any
    JSON.parse(@http_client.get("/#{API_PATH}/random", headers: @headers).body)
  end

  def get_stats() : JSON::Any
    JSON.parse(@http_client.get("/#{API_PATH}/stats", headers: @headers).body)
  end

  def get_anime(anime_id : Int32) : JSON::Any
    JSON.parse(@http_client.get("/#{API_PATH}/id?id=#{anime_id}", headers: @headers).body)
  end
end
