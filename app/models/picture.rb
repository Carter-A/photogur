class Picture < ActiveRecord::Base

  def self.api
    HTTParty.get('https://api.imgur.com/3/g/memes/viral/1',
      :headers => {"Authorization" => "Client-ID 8981794f11d793d"})
  end

  def self.twitter_api
    HTTParty.get('https://api.twitter.com/1.1/statuses/home_timeline.json')
  end


end
