class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end

  def most_popular_show
    self.highest_rating.title
  end
end
