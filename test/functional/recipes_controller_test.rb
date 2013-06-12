require 'test_helper'

class RecipesControllerTest < ActionController::TestCase
  fixtures :recipes
  
  test "should get index" do
  	get :index
  	assert_response :success
  	assert_not_nil assigns(:recipes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end
  
  test "should create recipe" do
    assert_difference('Recipe.count') do
      post :create, recipe: { recipe_name: "borsch", difficulty_level: "easy", total_time: "15", ingredient_count: "5" }
    end

    assert_redirected_to recipe_path(assigns(:recipe))
  end

end

