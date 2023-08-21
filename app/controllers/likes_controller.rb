class LikesController < ApplicationController
  def create
    like = current_user.likes.build(hobby_id: params[:hobby_id])
    like.save
    respond_to do |format|
      format.js
    end
  end

  def destroy
    like = Like.find_by(hobby_id: params[:hobby_id], user_id: current_user.id)
    like.destroy
    respond_to do |format|
      format.js
    end
  end

  def set_hobby
    @hobby = Hobby.find(params[:hobby_id])
  end
end
