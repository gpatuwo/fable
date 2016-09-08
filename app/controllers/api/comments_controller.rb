class Api::CommentsController < ApplicationController

  def create
    comment = Comment.new(comment_params)
    if comment.save
      @recipe = comment.recipe
      render '/api/recipes/show'
    else
      render json: comment, status: :unprocessable_entity
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    @recipe = comment.recipe
    if @comment.destroy
      render '/api/recipes/show', status: 200
    else
      @errors = @comment.errors.full_messages
      render "api/shared/error", status: 400
    end
  end

  private
  def comment_params
    params.require(:comment).permit(:body, :recipe_id, :user_id)
  end
end
