@vegetables.each do |veg|
  json.set! veg.id do
    json.partial! 'veg', vegetable: veg
  end
end
