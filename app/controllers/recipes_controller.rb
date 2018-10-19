class RecipesController < ApplicationController

   def index
     @user = User.find(params[:user_id])
     @recipes=Recipe.all.where(user_id:@user.id)
     render json: @recipes, status: :accepted
   end

  def create
     @recipe=Recipe.new(name:params[:name],user_id:params[:user_id])
     if @recipe.save
       render json: @recipe, status: :accepted
     else
       render json: { errors: @recipe.errors.full_messages }, status: :unprocessible_entity
     end
  end

  # def update
  #   @note.update(note_params)
  #   if @note.save
  #     render json: @note, status: :accepted
  #   else
  #     render json: { errors: @note.errors.full_messages }, status: :unprocessible_entity
  #   end
  # end
end
