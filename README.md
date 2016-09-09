![fable-logo]
[fable-logo]: ./public/fable_orange.png
[live][fable]
[fable]: http://www.fablefood.com

##### Fable provides you with recipes for vegetables that are currently in-season in the Bay Area.

##### Sign up to comment and add new recipes to the site.

##### It's built on a Postgres/Rails/React stack, so it's solid, easily extendable, and highly efficient in your browser.

# Features

## Vegetables
Fable filters through all the vegetables in its database to give you the vegetables that are currently in-season this month:
![veg-filter]
[veg-filter]: ./public/veg-filter.png

## Recipes
You can click on these vegetables to select recipes that contain those ingredients.
![recipe-selection]
[recipe-selection]: ./public/recipe-selection.png

These recipes cards show a preview of the recipe, with a scrollable ingredients preview:
![recipe-scroll]
[recipe-scroll]: ./public/recipe-scroll.png

## Log in/Sign up
To submit a new recipe or to comment on a recipe, login is required:
![login]
[login]: ./public/login.png

On the backend, password data is protected:
```ruby
def password=(password)
  @password = password
  self.password_digest = BCrypt::Password.create(password)
end

def is_password?(password)
  BCrypt::Password.new(self.password_digest).is_password?(password)
end
```
