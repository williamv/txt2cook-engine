require "test_helper"

class RecipeTest < ActiveSupport::TestCase
	test "should be able to create a new recipe" do
		r = Recipe.new
		assert r.save, "Cannot create a valid recipe"
	end
end


