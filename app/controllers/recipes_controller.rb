class RecipesController < ApplicationController
  get '/recipes/new' do 

    erb :'recipes/new.html'
  end

  post '/recipes' do
    redirect "/recipes/new"
  end


end