class Blog
  attr_accessor :client

  def initialize(url)
     Tumblr.configure do |config|
      config.consumer_key = "1UzKs7iCZN7jR624tXqp5PQsfI1xcyvpHNywffo9lSzecykBBV"
      config.consumer_secret = "Hp2HNoCe1HgmJpBuryp7GysetAjkVWIO2ndQ4Sb6SuXQpgVR2d"
      config.oauth_token ="boIeWcfIo82ZGzw42gOQbi45H0lXZHfWu0CetAYQJuSzKB40J8"
      config.oauth_token_secret ="hg62Lt9ky3xXNlAQyvgrNY8XXrQBJ9klhFftBOkVcUGtCooSVL"
    end
    @client = Tumblr::Client.new
    @url = url
  end

  def post_body
    photo_url = @client.posts(@url, :limit => 1)["posts"][0]["photos"][0]["alt_sizes"][0]["url"]
    
    # if !(@client.posts(@url, :limit => 1)["posts"][0]["image_permalink"])
    #   link = @client.posts(@url, :limit => 1)["posts"][0]["photos"][0]["alt_sizes"][0]["url"]
    #   # "<img src=#{link}>"
    # elsif !(@client.posts(@url, :limit => 1)["posts"][0]["body"])
    #   @client.posts(@url, :limit => 1)["posts"][0]["body"]
    # end   
  end
end
