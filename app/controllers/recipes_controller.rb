class RecipesController < ApplicationController

	def index
	  @recipes = Recipe.all

	  respond_to do |format|
		format.html
		format.json { render json: @recipes }
	  end
	end

	def show
	  @recipe = Recipe.find(params[:id])
    
	  respond_to do |format|
        format.html
        format.json { render json: @recipe }
      end
    end

    def new
      @recipe = Recipe.new

      respond_to do |format|
      	format.html
      	format.json { render json: @recipe }
      end
    end

    def edit
    	@recipe = Recipe.find(params[:id])
    end

    def create
      @recipe = Recipe.new(params[:recipe])

      respond_to do |format|
      	if @recipe.save
      		format.html {redirect_to @recipe, notice: 'You added #{recipe.recipe_name}!'}
      		format.json { render json: @recipe, status: :created, location: @recipe }
      	else
      		format.html {render action: "new"}
      		format.json { render json: @recipe.errors, status: :unprocessable_entity }
      	end
      end
    end

    def update
    	@recipe = Recipe.find(params[:id])

    	respond_to do |format|
    		if @recipe.update_attributes(params[:recipe])
    		   format.html {redirect_to @recipe, notice: 'Recipe successfully updated'}
    		   format.json {head :no_content}
    		else
    			format.html {render action: "edit"}
		        format.json { render json: @recipe.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
	    @recipe = Recipe.find(params[:id])
	    @recipe.destroy 

	    respond_to do |format|
	      format.html { redirect_to recipes_path }
	      format.json { head :no_content }
	    end
  	end
end
