class ChartographyController < ApplicationController

  def view
    @concerts = Event.search(params[:performer])
    # @playlist = Event.rspotify.artisits.first
  end

end
