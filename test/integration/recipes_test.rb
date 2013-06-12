require 'test_helper'

class RecipesTest < ActionDispatch::IntegrationTest
  fixtures :all
  
  test "anyone can view recipe information" do 
  	recipe = recipes(:garlicbread)
  	get recipe_url(recipe)

  	assert_response :success
  	assert_select "h1", recipe.recipe_name
  end



end