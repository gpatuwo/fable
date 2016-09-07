json.extract! recipe, :id, :title, :image, :ingredients, :instructions, :author_id

json.author_name recipe.author.username
json.vegetables recipe.vegetables
