class FavoritesController < ApplicationController
	def create
		@favorite = Favorite.new(user: User.find(session[:user_id]), song: Song.find(params[:favorite]))

	    respond_to do |format|
		if @favorite.save
		  flash[:notice] = "Added to playlist!"
          format.html do
          redirect_to :back
		end
		  format.json { render json: @reservation.to_json }
	    else
		  format.html { render :new} ## Specify the format in which you are rendering "new" page
		  format.json { render json: @reservation.errors } ## You might want to specify a json format as well
		end
    end

	end
	def destroy
		favorite = Favorite.where(user: User.find(session[:user_id]), song_id: params[:id]).first
		favorite.destroy
	  	redirect_to :back
    end
end

