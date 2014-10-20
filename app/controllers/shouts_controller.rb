class ShoutsController < ApplicationController
  before_action :require_login
  
def new
  @shout = Shout.new
end

def create
  @shout = current_user.shouts.new(shout_params)

  if @shout.save
    redirect_to dashboard_path
  else
    render :new
  end
end


  private
    def shout_params
      params.require(:shout).permit(:content)
    end
end
