class CreateTableRecipe < ActiveRecord::Migration
  def change
  	create_table :recipes do |r|
  		r.string :recipe_name
  		r.string :difficulty_level
  		r.integer :total_time
  		r.integer :ingredient_count
  		r.timestamps
  	end
  end
end
