class PdfsController < ApplicationController
  def edit
    @pdf = Pdf.find(params[:id])
  end

  def create
    @gallery = Gallery.find(params[:gallery_id])
    @pdf = @gallery.pdfs.create(pdf_params)
    redirect_to gallery_path(@gallery)
  end

  def update
    @pdf = Pdf.find(params[:id])

    if @pdf.update(pdf_params)
      redirect_to gallery_path(@pdf.gallery_id)
    else
      render 'edit'
    end
  end

  def destroy
   @gallery = Gallery.find(params[:gallery_id])
   @pdf = @gallery.pdfs.find(params[:id])
   @pdf.destroy
   redirect_to gallery_path(@gallery)
 end

private
  def pdf_params
    params.require(:pdf).permit(:title, :pdf_file, :icon)
  end
end
