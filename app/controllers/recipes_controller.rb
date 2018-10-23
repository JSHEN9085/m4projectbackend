class RecipesController < ApplicationController

   def index
     @user = User.find(params[:user_id])
     @recipes=Recipe.all.where(user_id:@user.id)
     render json: @recipes, status: :accepted
   end

  def create
     @recipe=Recipe.new(
       user_id: params[:user_id],
       name: params[:name],
       image: params[:image],
       calories: params[:calories],
       cooking_time: params[:cooking_time],
       ingredients: params[:ingredients]
     )
     if @recipe.save
       render json: @recipe, status: :accepted
     else
       render json: { errors: @recipe.errors.full_messages }, status: :unprocessible_entity
     end
  end

  def show
    @user = User.find(params[:user_id])
    @recipes = @user.recipes
    @recipe = @recipes.find(params[:id])
    render json: @recipe
  end

  def destroy
    @recipe = Recipe.find(params[:id].to_i)
    if @recipe.user_id == params[:user_id].to_i
      @recipe.destroy
      render json: @recipe
    else
      @collection = @recipe.collections.where({collector_id: params[:user_id].to_i })
      @collection.destroy_all
      render json: @collection
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
