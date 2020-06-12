class BabiesController < ApplicationController

  def index
  end

  def new
    @baby = Baby.new
    @baby.users << current_user
  end

  def create
    @baby = Baby.new(baby_params)
    if @baby.save
      redirect_to root_path, notice: 'Congratulation!!'
    else
      render :new
    end
  end

  def edit
    @baby = Baby.find(params[:id])
  end

  def update
    @baby = Baby.find(params[:id])
    if @baby.update(baby_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  private
  def baby_params
    params.require(:baby).permit(:name, user_ids: [])
  end
end
