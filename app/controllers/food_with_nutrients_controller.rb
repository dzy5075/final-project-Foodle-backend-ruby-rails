class FoodWithNutrientsController < ApplicationController

    def show 
        food = FoodWithNutrient.find(params[:id])
        render json: food, status: :ok
    end
end
