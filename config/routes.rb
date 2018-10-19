Rails.application.routes.draw do

  resources :recipeingredients
  resources :ingredients
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :users do
    resources :recipes,:collections
   end


end
