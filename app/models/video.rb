class Video < ActiveRecord::Base
  belongs_to :category
  has_many :reviews, -> { order 'created_at DESC'}
  validates_presence_of :title, :description
  has_many :queue_items

  def self.search_by_title(search_term)
    return [] if search_term.blank?
    where("title ILIKE ?", "%#{search_term}%").order("created_at DESC")
  end
  
end


# % wild cards allow anything within title for search

