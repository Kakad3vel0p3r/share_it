class TingsController < ApplicationController
  before_action :find_ting,only: [:show,:edit,:update,:destroy]

  def index
    @tings = Ting.all.order("created_at DESC")
  end

  def show
  end

  def new
    @ting = Ting.new
  end

  def create
    @ting = Ting.new(ting_params)
    if @ting.save
      redirect_to @ting
    else
      render 'new'
    end
  end

  def edit
  end

  def update
    if @ting.update(ting_params)
      redirect_to @ting
    else
      render 'edit'
    end
  end

  def destroy
    @ting.destroy
    redirect_to root_path
  end

  private

  def ting_params
    params.require(:ting).permit(:title, :brief)
  end

  def find_ting
    @ting = Ting.find(params[:id])
  end
end
