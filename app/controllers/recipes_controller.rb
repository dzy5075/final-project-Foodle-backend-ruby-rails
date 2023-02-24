class RecipesController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index
        recipes = Recipe.all 
        render json: recipes
    end

    def show 
        recipe = Recipe.find(params[:id]) 
        render json: recipe
    end
end
