class User < ActiveRecord::Base
  validates_presence_of :email, :password, :full_name
  validates_uniqueness_of :email

  has_secure_password

  has_many :queue_items, -> { order :position }
  has_many :reviews

  

  def normalize_queue_item_positions
    queue_items.each_with_index do |queue_items, index|
      queue_items.update_attributes(position: index + 1)
    end
  end
end
