@vegetables.each do |veg|
  json.set! veg.id do
    json.partial! 'veg', veg: veg
  end
end
