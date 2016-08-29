Fable
===================

Heroku link: http://fable-food.herokuapp.com/

----------


## MVP
Fable provides farm-to-table recipes for what's at farmers markets this week in the Bay Area. The design of the site will rely on a clean grid format (like Pinterest's) but will be more similar in concept to [Food52](https://food52.com/recipes). This app will be built using Ruby on Rails and React/Redux with the following features:

 - New account creation, login and guest account
 - Infinite Scroll
 - Comments
 - Autocomplete search
 - Recipe upload/edit
 - Recipe saving
 - Recipe liking

----------


## Design Documents

 - [Wireframes][wireframes]
 - [React Components (example)][components]
 - [Sample State][sample-state]
 - [Redux Architecture][redux-structure]
 - [DB Schema][schema]
 - [API Endpoints][api]

[wireframes]: wireframes
[components]: docs/component-heirarchy.md
[sample-state]: docs/sample-state.md
[redux-structure]: docs/redux-structure.md
[schema]: docs/schema.md
[api]: docs/api-endpoints.md

----------

## Implementation Timeline

### Phase 1: Backend and Auth set up [ 2 days ]
Objective: Functioning rails project with front-end Authentication

 - New Rails project
 - User model/migration
 - Back end authentication (session/password)
 - StaticPages controller and root view
 - Webpack & react/redux modules
 - APIUtil to interact with the API
 - Redux cycle for frontend authentication
 - User signup/signin components
 - Blank landing component after signup/signin
 - Style signup/signin components
 - Seed users
 - Review phase 1

### Phase 2: Vegetables [ 3 days ]
Objective: Vegetables can be created, read, edited and destroyed through the API (veg crud only w/admin privileges?)

  - Vegetable model
  - Seed database with a small amount of test data
  - CRUD API for vegetables (VegetablesController)
  - JBuilder views for vegs
  - Vegetable components and respective Redux loops
  - VegetablesIndex
  - VegetableIndexItem
  - VegetableForm
  - Seed notes

### Phase 3: Recipes [ 2 days ]
Objective: Vegetables are associated with Recipes that can be created, read, edited and destroyed through the API.

  - Recipe model
  - Seed database with a small amount of test data
  - CRUD API for notes (RecipesController)
  - JBuilder views for recipes
  - Adding recipes requires a vegetable
  - Style recipe components
  - Seed recipes

### Phase 4: Liking, Saving, Commenting [ 2 days]
### Bonus: Tagging
