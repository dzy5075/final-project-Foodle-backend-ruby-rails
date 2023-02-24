class FavoriteRecipesController < ApplicationController
    wrap_parameters format: []
    skip_before_action :authorized, only: :index

    def index 
        favs = FavoriteRecipe.all
        render json: favs
    end

    def create 
        newfav = FavoriteRecipe.create!(recipe_params)
        render json: newfav, status: :created
    end
end
