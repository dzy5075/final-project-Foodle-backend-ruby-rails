class UsersController < ApplicationController
    skip_before_action :authorized, only: [:create, :index, :show]

    def index
        users = User.all
        render json: users
    end

    def create 
        new_user = User.create!(user_params)
        session[:user_id] = new_user.id
        render json: new_user, status: :created
    end

    def show
        # bottom method only for if the user is logged in
        # --------------------------------------------------
        # if current_user
        #     user = User.find(params[:id])
        #     render json: user, status: :ok
        # end
        # --------------------------------------------------
        user = User.find(params[:id])
        render json: user, status: :ok
    end
    
    # for persistence
    def me
        
        p 'ME'
        p session[:user_id]
        # byebug
        # user = User.find_by!(id: session[:user_id])
        render json: current_user, status: :ok
    end

    private

    def user_params
        params.permit(:name, :email, :password, :password_confirmation)
    end

end
