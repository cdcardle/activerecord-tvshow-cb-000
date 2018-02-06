class Show < ActiveRecord::Base
  def self.highest_rating
    self.maximum(:rating)
  end

  def self.most_popular_show
    self.highest_rating.name
  end

  def self.lowest_rating
    self.minimum(:rating)
  end

  def self.least_popular_show
    self.lowest_rating.name
  end

  def self.ratings_sum
    self.sum(:ratings)
  end

  def self.popular_shows
    self.where(rating > 5)
  end
end
