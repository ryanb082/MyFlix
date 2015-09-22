class QueueItemsController < ApplicationController

  before_filter :require_user

  def index
    @queue_items = current_user.queue_items
  end

  def create
    video = Video.find(params[:video_id])
    queue_video(video)
    redirect_to my_queue_path
  end

  def destroy
    queue_item = QueueItem.find(params[:id])
    queue_item.destroy if current_user.queue_items.include?(queue_item)

    redirect_to my_queue_path
  end

  def update_queue
    begin
      ActiveRecord::Base.transaction do
        params[:queue_items].each do |queue_item_data|
          queue_item = QueueItem.find(queue_item_data['id'])
          queue_item.update_attributes!(position: queue_item_data['position'])
            
        end
      end
    rescue ActiveRecord::RecordInvalid
      flash[:error] = "Invalid position numbers."  
      redirect_to my_queue_path
      return
    end
    current_user.queue_items.each_with_index do |queue_items, index|
      queue_items.update_attributes(position: index + 1)
    end
    redirect_to my_queue_path
  end

  private

  def queue_video(video)
    QueueItem.create(video: video, user: current_user, position: position)
      unless current_user_queued_video?(video)

    end
  end

  def position
    current_user.queue_items.count + 1
  end

  def current_user_queued_video?(video)
    current_user.queue_items.map(&:video).include?(video)
  end
end
