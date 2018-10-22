class CollectionsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @recipes = @user.collected_recipes
    render json: @recipes, status: :accepted
  end
end
