class SearchesController < ApplicationController
  
  def show
    text_shout = TextShout.where("body ILIKE ?", "%#{params[:query]}%")
    @shouts = Shout.where(content_type: "TextShout", content_id: text_shout)
  end
  
end
