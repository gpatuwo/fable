json.extract! recipe, :id, :title, :image, :ingredients, :instructions, :author_id

json.author_name recipe.author.username

json.comments do
  json.partial! 'api/comments/comment', collection: recipe.comments, as: :comment
end
