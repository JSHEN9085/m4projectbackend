class CollectionsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @recipes = @user.collected_recipes
    render json: @recipes, status: :accepted
  end


  def create
     @collection=Collection.new(
       collector_id: params[:user_id],
       recipe_id: params[:recipe_id]

     )

     if @collection.save
       render json: @collection, status: :accepted
     else
       render json: { errors: @collection.errors.full_messages }, status: :unprocessible_entity
     end
   end

   def show
     @user = User.find(params[:user_id])
     @collections = @user.collected_recipes
     @collection = @collections.find(params[:id])
   end

   def destroy
     @collection = Collection.find(params[:id])
     @collection.destroy
     render json: @collection
   end


end
