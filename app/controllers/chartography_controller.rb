class ChartographyController < ApplicationController

  def view
    @concerts = Event.search(params[:performer])
  end

end
