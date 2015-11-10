class Picture < ActiveRecord::Base

  def self.api
    HTTParty.get('https://api.imgur.com/3/g/memes/viral/1',
      :headers => {"Authorization" => "Client-ID 8981794f11d793d"})
  end

end
