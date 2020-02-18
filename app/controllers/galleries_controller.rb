class GalleriesController < ApplicationController
  def show
    @gallery = Gallery.find(params[:id])
  end

  def edit
    @gallery = Gallery.find(params[:id])
  end

  def create
    @division = Division.find(params[:division_id])
    @gallery = @division.galleries.create(gallery_params)
    redirect_to division_path(@division)
  end

  def update
    @gallery = Gallery.find(params[:id])

    if @gallery.update(gallery_params)
    redirect_to @gallery
    else
      render 'edit'
    end
  end

  def destroy
    @division = Division.find(params[:division_id])
    @gallery = @division.galleries.find(params[:id])
    @gallery.destroy
    redirect_to division_path(@division)
  end

  private
    def gallery_params
      params.require(:gallery).permit(:title, :icon, {images: []}, {video: []} )
    end
end
