class HobbiesController < ApplicationController
  def index
  end



  private

  def hobby_params
    params.require(:hobby).permit(:genre_id, :activity, :time).merge(user_id: current_user.id)
  end
end
