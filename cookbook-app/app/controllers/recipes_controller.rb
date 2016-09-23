class RecipesController < ApplicationController

  before_action :authenticate_user!, only: [:index, :new]

  def index
    @recipes = Recipe.all
    sort_attribute = params[:sort]

    if sort_attribute
      @recipes = @recipes.order(sort_attribute)
    end
  end

  def new

  end

  def create
    @recipe = Recipe.create(title: params[:title],
                            user_id: current_user.id,
                            prep_time: params[:prep_time],
                            ingredients: params[:ingredients],
                            directions: params[:directions])

    redirect_to "/recipes/#{@recipe.id}"
    flash[:success] = "Recipe has been created"
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    @recipe.update(title: params[:title],
                  chef: params[:chef],
                  prep_time: params[:prep_time],
                  ingredients: params[:ingredients],
                  directions: params[:directions])

    redirect_to "/recipes/#{@recipe.id}"
    flash[:success] = "Recipe has been updated"
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    @recipe.destroy

    redirect_to '/recipes'
    flash[:warning] = "Recipe has been deleted"
  end
end
