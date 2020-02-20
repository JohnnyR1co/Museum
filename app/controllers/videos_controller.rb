class VideosController < ApplicationController
  before_action :set_gallery

  def create
    add_more_videos(videos_params[:videos])
    flash[:error] = "Failed uploading videos" unless @gallery.save
    redirect_to @gallery
  end

  def destroy
    remove_video_at_index(params[:id].to_i)
    flash[:error] = "Failed deleting video" unless @gallery.save
    redirect_to @gallery
  end

  private

  def set_gallery
    @gallery = Gallery.find(params[:gallery_id])
  end

  def add_more_videos(new_videos)
    videos = @gallery.videos
    videos += new_videos
    @gallery.videos = videos
  end

  def remove_video_at_index(index)
    remain_videos = @gallery.videos # copy the array
    deleted_video = remain_videos.delete_at(index) # delete the target video
    deleted_video.try(:remove!) # delete video from S3
    @gallery.videos = remain_videos # re-assign back
  end

  def videos_params
    params.require(:gallery).permit({videos: []}) # allow nested params as array
  end
end
