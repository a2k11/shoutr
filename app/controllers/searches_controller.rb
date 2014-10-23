class SearchesController < ApplicationController
  
  def show
    text_shout = TextShout.where("body ILIKE ?",
                                 "%#{params[:search]}%").pluck(:id)
    @shouts = Shout.where(content_type: "TextShout", content_id: text_shout)

    @users = User.where("username ILIKE ?", "%#{params[:search]}%")
  end
  
end
