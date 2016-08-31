class VegetablesController < ApplicationController
  def index
    @vegetables = Vegetable.all
    render "vegetables"
  end

  def show
    @vegetable = Vegetable.find(params[:id])
    render "vegetables/vegetable"
  end

  def new
    @vegetable = Vegetable.new
  end

  def create
    @vegetable = Vegetable.new(vegetable_params)
    if @vegetable.save
      render "vegetables/vegetable"
    else
      render json: @vegetable.errors.full_messages
    end
  end

  def destroy
    @vegetable = Vegetable.find(params[:id])
    if @vegetable.destroy
      render "vegetables", status: 200
    else
      @errors = @vegetable.errors.full_messages
      render "api/shared/error", status: 400
    end
  end

  private
  def vegetable_params
    params.require(:vegetable).permit(:name, :description, :jan, :feb, :mar, :apr, :may, :jun, :jul, :aug, :sep, :oct, :nov, :dec)
  end
end
