class ChartographyController < ApplicationController

  def view
    @search = Event.search(params)
  end

end
