class Recipe < ActiveRecord::Base
	attr_accessible :recipe_name, :difficulty_level, :total_time, :ingredient_count
	validates :recipe_name, :difficulty_level, :total_time, :ingredient_count, presence: true
end