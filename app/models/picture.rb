class Picture < ActiveRecord::Base

  def self.api
    HTTParty.get('https://api.imgur.com/3/gallery/image/BOfrQre.json',
      :headers => {"Authorization" => "Client-ID 8981794f11d793d"})
  end

end
