class QueueItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :video

  delegate :category, to: :video
  delegate :title, to: :video, prefix: :video

  validates_numericality_of :position, { only_integer: true}

  
  def rating
binding.pry
    review = Review.find_by(user: user, video: video)

    review.rating if review
  end

  def rating=(new_rating)
    review = Review.find_by(user: user, video: video)

    review.update_attributes(rating: new_rating)
  end

  def category_name
    category.name
  end

  
end
