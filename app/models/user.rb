class User < ApplicationRecord
    has_secure_password

    has_many :favorite_recipes
    has_many :recipes, through: :favorite_recipes


    validates_presence_of :name, :email
    validates :name, :email, uniqueness: true
end
