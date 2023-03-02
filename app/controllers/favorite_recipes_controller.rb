class FavoriteRecipesController < ApplicationController
    wrap_parameters format: []
    skip_before_action :authorized, only: [:index, :show]

    def index 
        favs = FavoriteRecipe.all
        render json: favs
    end

    def create 
        newfav = FavoriteRecipe.create!(favorite_params)
        render json: newfav, status: :created
    end

    def show 
        singleuserfavorite = FavoriteRecipe.find(params[:id])
        render json: singleuserfavorite, status: :ok
    end

    def destroy
        fav = FavoriteRecipe.find_by(id: params[:id]) # or Spice.find(params[:id])
        if fav 
            fav.destroy
            head :no_content
        else
            render json: {error: "Favorite Recipe not found" }, status: :not_found
        end

    end

    private 

    def favorite_params
        params.permit(:user_id, :recipe_id)
    end
end
