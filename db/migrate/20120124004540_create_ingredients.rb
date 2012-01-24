class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.integer :recipe_id
      t.string :quantity
      t.string :unit
      t.string :type

      t.timestamps
    end
  end
end
