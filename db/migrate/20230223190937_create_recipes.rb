class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :category
      t.string :cuisine
      t.text :instruction
      t.string :image
      t.string :video

      t.timestamps
    end
  end
end
