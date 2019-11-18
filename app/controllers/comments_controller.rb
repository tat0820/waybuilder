class CommentsController < ApplicationController
  def create
    Comment.create(text: params[:text], way_id: params[:way_id], user_id: current_user.id)
    redirect_to "/ways/#{comment.way.id}"
  end

  private
  def comment_params
    params.permit(:text, :way_id)
  end
end
