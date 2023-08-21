class HobbiesController < ApplicationController
  before_action :authenticate_user!, only: [:new]
  before_action :set_hobby, only: [:show, :edit, :update, :destroy]
  def index
    @hobby = Hobby.all
  end

  def new
    @hobby = Hobby.new
  end

  def create
    @hobby = Hobby.new(hobby_params)
    if @hobby.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @hobby = Hobby.find(params[:id])
  end

  def edit
  end

  def update
    if @hobby.update(hobby_params)
      redirect_to hobby_path(@hobby)
    else
      render action: :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @hobby.destroy
    redirect_to root_path
  end

  private

  def hobby_params
    params.require(:hobby).permit(:genre_id, :activity, :time, :date).merge(user_id: current_user.id)
  end

  def set_hobby
    @hobby = Hobby.find(params[:id])
  end
end
