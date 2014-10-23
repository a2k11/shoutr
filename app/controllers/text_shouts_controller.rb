class TextShoutsController < ApplicationController

  def create
    text_shout = TextShout.new(text_shout_params)
    @shout = current_user.shouts.new(content: text_shout)

    if @shout.save
      redirect_to dashboard_path 
    else
      render :new
    end
  end

  private
  def text_shout_params
    params.require(:text_shout).permit(:body)
  end

end
