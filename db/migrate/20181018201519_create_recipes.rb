class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :image
      t.integer :calories
      t.integer :user_id, :default => 1
      t.integer :cooking_time
      t.text :ingredients, array: true, default: []

      t.timestamps
    end
  end
end
