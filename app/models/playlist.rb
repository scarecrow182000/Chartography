class Playlist < ActiveRecord::Base

  def self.search(search_text)
    if search_text.blank?
      EmptyResults.new
    else
      output = RSpotify::Artist.search("#{search_text}")
      output.first.top_tracks(:US)
    end
  end

  class EmptyResults
    def results
      []
    end
  end

end
