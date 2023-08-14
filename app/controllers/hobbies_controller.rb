class HobbiesController < ApplicationController
  def index
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
  


  private

  def hobby_params
    params.require(:hobby).permit(:genre_id, :activity, :time, :date).merge(user_id: current_user.id)
  end
end
