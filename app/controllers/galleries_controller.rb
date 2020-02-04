class GalleriesController < ApplicationController
  def create
    @division = Division.find(params[:division_id])
    @gallery = @division.galleries.create(gallery_params)
    if @gallery.save
      redirect_to division_path(@division)
    else
      render 'division/show', notice: "The deck was saved"
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
      params.require(:gallery).permit(:image, :video, :pdf)
    end
end
