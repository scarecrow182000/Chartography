class Event < ActiveRecord::Base

  validates :performer, presence: true
  validates :option, presence: true, inclusion: { in: %w(date location)}

  def self.search(search_text)
    if search_text.blank?
      []
    else
      client = Songkickr::Remote.new ENV["SK_API_SK"]
      client.events(type: 'concert', artists: "#{search_text}")
    end
  end

  def performer
  end

  def option
  end

  # def date
  # end
  # def location
  # end

end
