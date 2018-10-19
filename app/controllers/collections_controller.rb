class CollectionsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @recipes=Recipe.all.where(user_id:@user.id)
    render json: @recipes, status: :accepted
  end
end
