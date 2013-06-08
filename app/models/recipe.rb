class Recipe < ActiveRecord::Base
	attr_accessible :recipe_name, :difficulty_level, :total_time, :ingredient_count
end