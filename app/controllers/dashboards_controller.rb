class DashboardsController < ApplicationController
 def show
  @text_shout = TextShout.new
  @picture_shout = PhotoShout.new
  @timeline = current_user.timeline.page(params[:page])
 end 

end
