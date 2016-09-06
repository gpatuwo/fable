@recipes.each do |recipe|
  json.set! veg.id do
    json.partial! 'recipe', recipe: recipe
  end
end
