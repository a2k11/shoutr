class LikesController < ApplicationController
  def create
    shout = Shout.find(params[:shout_id])
    current_user.liked_shouts << shout

    redirect_to :back
  end

  def destroy
    shout = Shout.find(params[:shout_id])
    current_user.liked_shouts.delete shout

    redirect_to :back
  end
end
