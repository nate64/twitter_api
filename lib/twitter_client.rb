class twitterClient

  def self.timeline
    client.home_timeline 
  end

  def self.tweet(message)
    client.update(message)
  end


private
  def self.twitterClient
    Twitter::Rest::Client.new do |config|
      config.consumer_key         =['TWITTER_CONSUMER_KEY']
      config.consumer_secret      =['TWITER_CONSUMER_SECRET']
      config.access_token         =['TWITTER_ACCESS_TOKEN']
      config.access_token_secet   =['TWITTER_ACCESS_TOKEN_SECRET']
    end
  end
end
