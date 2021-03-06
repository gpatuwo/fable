class Api::RecipesController < ApplicationController

  def index
    @recipes = []

    if params[:vegIds]
      @vegetables = []
      params[:vegIds].each do |vegId|
        veg = Vegetable.find(vegId)
        if veg
          @recipes += Recipe.all.where("ingredients ILIKE ?", "%#{veg.name}%")
        end
      end
    else
      @recipes = Recipe.all
    end
    render "api/recipes/index"
  end

  def show
    @recipe = Recipe.find(params[:id])
    render "api/recipes/show"
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      render "api/recipes/show"
    else
      render json: @recipe.errors.full_messages, status: 422
    end
  end

  def destroy
    @recipe = Recipe.find(params[:id])
    if @recipe.destroy
      render "api/recipes/show", status: 200
    else
      @errors = @recipe.errors.full_messages
      render "api/shared/error", status: 400
    end
  end

  def edit
    @recipe = Recipe.find(params[:id])
  end

  def update
    @recipe = Recipe.find(params[:id])
    if @recipe.update(recipe_params)
      render "api/recipes/show"
    else
      render json: @recipe.errors.full_messages
    end
  end

  private
  def recipe_params
    params.require(:recipe).permit(
      :title,
      :image,
      :ingredients,
      :instructions,
      :author_id,
      :vegetables)
  end
end
