class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :cuisine
      t.string :image
      t.string :servings
      t.integer :calories
      t.integer :user_id
      t.string :dietlabel
      

      t.timestamps
    end
  end
end
