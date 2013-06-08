require "test_helper"

class RecipeTest < ActiveSupport::TestCase
	test "should be able to create a new recipe" do
		r = Recipe.new 
		r.recipe_name = "Orzo"
		r.difficulty_level = "Easy"
		r.total_time = 15
		r.ingredient_count = 5		
		assert r.save, "Cannot create a valid recipe"
	end

	test "shouldn't be able to create a new recipe without recipe name" do
		r = Recipe.new
		r.difficulty_level = "Easy"
		r.total_time = 15
		r.ingredient_count = 5		
		assert !r.save, "Prevent recipe creation without a recipe name"
	end

	test "shouldn't be able to create a new recipe without a difficulty level" do
		r = Recipe.new
		r.recipe_name = "Orzo"
		r.total_time = 15
		r.ingredient_count = 5	
		assert !r.save, "Prevent recipe creating if difficulty level is missing"
	end

	test "shouldn't be able to create a new recipe without total time" do
		r = Recipe.new
		r.recipe_name = "Orzo"
		r.difficulty_level = "Easy"
		r.ingredient_count = 20
		assert !r.save, "Prevent recipe creation if total_time is missing"
	end

	test "shouldn't be able to create a new recipe without ingredient count" do
		r = Recipe.new
		r.recipe_name = "Orzo"
		r.difficulty_level = "Easy"
		r.total_time =  15
		assert !r.save, "Prevent recipe creation if ingredient count is missing"
	end

	test "each field should only accept well formed data for it's type" do
		r = Recipe.new
		r.recipe_name = 123
		r.difficulty_level = 123
		r.total_time = "Here's a string"
		r.ingredient_count = "Here's another string"
		assert !r.save, "Shouldn't be able to save a recipe with bad data"
	end
end


