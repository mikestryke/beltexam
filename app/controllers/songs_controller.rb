class SongsController < ApplicationController
  def index
  	@user = User.find(session[:user_id])
    @songs = Song.all.order(created_at: :desc)
    @favorites = Favorite.all
  end
  def create
  	@song = Song.new(song_params)
  	if @song.save
  		flash[:notice] = "New song added!"
  	  else
  		flash[:notice] = "No empty entries.  At least 2 characters for the title and the artist"
  	  end
  	  redirect_to :back
  end
  def song_params
  	params.require(:song).permit(:artist, :title, :user_id)
  end
  def show
  	@showsong = Song.find(params[:id])

  end
end
