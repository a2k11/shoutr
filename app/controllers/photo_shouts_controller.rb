class PhotoShoutsController < ApplicationController 

  def create
    photo_shout = PhotoShout.new(photo_shout_params)
    @shout = current_user.shouts.new(content: photo_shout)

    if @shout.save
      redirect_to dashboard_path 
    else
      render :new
    end
  end

  private
  def photo_shout_params
    params.require(:photo_shout).permit(:url)
  end

end
