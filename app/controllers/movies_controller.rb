class MoviesController < ApplicationController
  def create
    @gallery = Gallery.find(params[:gallery_id])
    @movie = @gallery.movies.create(movie_params)
    redirect_to gallery_path(@gallery)
  end

  def destroy
   @gallery = Gallery.find(params[:gallery_id])
   @movie = @gallery.movies.find(params[:id])
   @movie.destroy
   redirect_to gallery_path(@gallery)
 end

private
  def movie_params
    params.require(:movie).permit(:title, :video_file, :icon)
  end
end
