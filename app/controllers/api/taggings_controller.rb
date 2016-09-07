class Api::TaggingsController < ApplicationController

  def new
    @recipe = Recipe.find(params[:recipe_id])
    @tagging = Tagging.new(tag_params)
  end

  def create
    @tagging = Tagging.new(tag_params)
    unless @tagging.save
      render json: @tagging.errors.full_messages, status: 422
    end
  end

  def destroy
    @tagging = Tagging.find(params[:id])
    if @tagging.destroy
      render "api/recipes", status: 200
    else
      render json: @tagging.errors.full_messages, status: 400
    end
  end

  private
  def tag_params
    params.require(:tagging).permit(
    :recipe_id,
    :veg_id,
    :tag_name)
  end
end
