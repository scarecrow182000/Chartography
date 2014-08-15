class Event < ActiveRecord::Base
  # include PgSearch
  # pg_search_scope :search,
  #                 :against => [:],
  #                 :using => {
  #                   :tsearch => {
  #                     }
  #                 }

  # def query(params)
  #   client = Songkickr::Remote.new ENV["SK_API_SK"]
  #   @results = client.events(type: 'concert', artists: "#{@query}")
  # end

end
