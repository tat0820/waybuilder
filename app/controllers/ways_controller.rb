class WaysController < ApplicationController

  before_action :move_to_index, except: [:index, :show]

def index
  @oranges = Way.includes(:user).order("created_at DESC").page(params[:page]).per(5)
end

def new

end

def create
  Way.create(image: orange_params[:image], text: orange_params[:text], user_id: current_user.id)
end

def destroy
  orange = Way.find(params[:id])
  orange.destroy if orange.user_id == current_user.id
end

def edit
  @orange = Way.find(params[:id])
end

def update
  orange = Way.find(params[:id])
  if orange.user_id == current_user_id
    orange.update(orange_params)
  end
end

def show
  @orange = Way.find(params[:id])
  @comments = @orange.comments.includes(:user)
end

private
def orange_params
  params.permit(:image, :text)
end

def move_to_index
  redirect_to action: :index unless user_signed_in?
end


end
