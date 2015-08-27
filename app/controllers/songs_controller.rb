###

## Do NOT USE

### 


class SongsController < ApplicationController
  
  # GET /songs 
  get '/songs' do # Index Action
    @songs = Song.all

    erb :"songs/index.html"
  end

  get '/songs/new' do # New Action

    erb :"songs/new.html"
  end

  post '/songs' do # Create Action
    @song = Song.new(params[:song]) 

    # @song.name = params[:name]
    # @song.artist_name = params[:artist_name]
    # @song.record_label = params[:record_label]
    @song.save
    redirect "/songs/#{@song.id}"
  end

  get '/songs/:id' do # Show Action
    @song = Song.find(params[:id])

    erb :"songs/show.html"
  end  

  get '/songs/:id/edit' do # Edit Action
    @song = Song.find(params[:id])    
    @genres = Genre.all

    erb :"songs/edit.html"
  end

  patch '/songs/:id' do # Update Action
    @song = Song.find(params[:id]) 
    # We can't mass-assign because params 

    # in genre_ids I have an array of genre_ids.
    # for each of those ids I want to add the genre
    # with that id to this @song
    @song.add_genres_by_ids(params[:genre_ids])
    @song.update(params[:song])

    # has too much data
    # @song.name = params[:name]
    # @song.name = params[:artist_name]

    # @song.update(params[:song]) GET THIS WORKING
    redirect "/songs/#{@song.id}"
  end

end