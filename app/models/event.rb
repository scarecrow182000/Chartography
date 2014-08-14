class Event < ActiveRecord::Base


  include PgSearch
  pg_search_scope :search,
                  :against => [:artist],
                  :using => {
                    :tsearch => {
                      }
                  }

  def self.search(params)
    if params[:search].blank?
      root_path
    else
#Event.search(params[:query])
      songkick(params[:search])
    end
  end

  def songkick(search)
    client = Songkickr::Remote.new ENV["SK_API_SK"]
    @results = client.events(type: 'concert', artists: "#{search}")
  end


end






# puts "Found #{results.results.count}"
# results.results.each do |result|
#   puts "#{result.display_name} in #{result.location.city}"
