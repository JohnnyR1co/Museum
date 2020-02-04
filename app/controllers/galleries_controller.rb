class GalleriesController < ApplicationController
  def create
    @division = Division.find(params[:division_id])
    @gallery = @division.galleries.create(gallery_params)
    redirect_to division_path(@division)
  end

  def destroy
    @division = Division.find(params[:division_id])
    @gallery = @division.galleries.find(params[:id])
    @gallery.destroy
    redirect_to division_path(@division)
  end

  private
    def gallery_params
      params.require(:gallery).permit(:image, :video, :pdf)
    end
end
