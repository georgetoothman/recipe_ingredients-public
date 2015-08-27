class IngredientsController < ApplicationController
  # Get
  post '/ingredients' do 
    # params = {
    #     ingredient: {
    #       name: nil,
    #       calories: nil,
    #       vegetarian: nil
    #     }
    #   }
    ingredient = Ingredient.new(params[:ingredient])
    ingredient.save
    redirect "ingredients/#{ingredient.id}"
  end

  get '/ingredients/new' do
    @ingredient = Ingredient.new
    erb :'ingredients/new.html'
  end

  get '/ingredients' do 
    @ingredients = Ingredient.all
  end

  

  get '/ingredients/:id' do
    @ingredient = Ingredient.find(params[:id])
    erb :'ingredients/show.html'
  end
end