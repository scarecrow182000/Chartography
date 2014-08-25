class ChartographyController < ApplicationController

  def view
    @playlist = Playlist.search(params[:performer])
    @concerts = Event.search(params[:performer])
  end

end
