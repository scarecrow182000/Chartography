class Event < ActiveRecord::Base

  def self.search(search_text)
    if search_text.blank?
      EmptyResults.new
    else
      songkickr(search_text)
      # rspotify(search_text)
    end
  end

  def self.songkickr(search_text)
    client = Songkickr::Remote.new ENV["SK_API_SK"]
    client.events(type: 'concert', artists: "#{search_text}")
  end

  # def self.rspotify(search_text)
  #   RSpotify::Artist.search("#{search_text}")
  # end

  class EmptyResults
    def results
      []
    end
  end

end
