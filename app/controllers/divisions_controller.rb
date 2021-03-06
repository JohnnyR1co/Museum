class DivisionsController < ApplicationController
    before_action :authenticate_user!
  def index
    @divisions = Division.all.order(:title)
  end

  def show
    @division = Division.find(params[:id])
  end

  def new
    @division = Division.new
  end

  def edit
    @division = Division.find(params[:id])
  end

  def create
    @division = Division.new(division_params)

    if @division.save
      redirect_to divisions_path
    else
      render 'new'
    end
  end

  def update
    @division = Division.find(params[:id])

    if @division.update(division_params)
    redirect_to divisions_path
    else
      render 'edit'
    end
  end

  def destroy
    @division = Division.find(params[:id])
    @division.destroy

    redirect_to divisions_path
  end

  private
  def division_params
    params.require(:division).permit(:title, :icon)
  end
end
