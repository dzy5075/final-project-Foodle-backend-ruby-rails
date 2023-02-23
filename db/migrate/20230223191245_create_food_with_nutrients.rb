class CreateFoodWithNutrients < ActiveRecord::Migration[7.0]
  def change
    create_table :food_with_nutrients do |t|
      t.string :name
      t.string :serving
      t.integer :carbs
      t.integer :proteins
      t.integer :fats

      t.timestamps
    end
  end
end
