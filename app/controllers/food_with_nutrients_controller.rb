class FoodWithNutrientsController < ApplicationController
    skip_before_action :authorized, only: :show
    def show 
        food = FoodWithNutrient.find(params[:id])
        render json: food, status: :ok
    end
end
