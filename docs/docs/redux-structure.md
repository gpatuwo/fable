# Redux Structure

The application's state is organized by data type. Under each data type, there may be sub-states. Each action is listed with the sequence of events that results from its invocation, ending with the API or a reducer. Subscribed components, i.e. containers, are listed at the end.

Using this document, you should be able to trace an **action** starting with where it was invoked, through the **API**/**reducer** involved, and finally to the **components** that update as a result. Once you start implementing your Redux structure, you'll need to do the same.

## Auth Cycles

### Session API Request Actions

* `signUp`
  0. invoked from `SignupForm` `onSubmit`
  0. `POST /api/users` is called.
  0. `receiveCurrentUser` is set as the success callback.
* `logIn`
  0. invoked from `Navbar` `onSubmit`
  0. `POST /api/session` is called.
  0. `receiveCurrentUser` is set as the callback.
* `logOut`
  0. invoked from `Navbar` `onClick`
  0. `DELETE /api/session` is called.
  0. `removeCurrentUser` is set as the success callback.
* `fetchCurrentUser`
  0. invoked from `App` in `didMount`
  0. `GET /api/session` is called.
  0. `receiveCurrentUser` is set as the success callback.

### Session API Response Actions

* `receiveCurrentUser`
  0. invoked from an API callback
  0. the `SessionReducer` stores `currentUser` in the application's state.
* `removeCurrentUser`
  0. invoked from an API callback
  0. the `SessionReducer` removes `currentUser` from the application's state.

## Error Cycles

### Error API Response Actions
* `setErrors`
  0. invoked from API callbacks on error for actions that generate POST requests
  0. the `ErrorReducer` stores the `form` in the application's state; `errors` are mapped to their respective forms
* `removeErrors`
  0. invoked from API callbacks on success for actions that generate POST requests
  0. the `ErrorReducer` removes `errors` for a given `form` in the application's state.

## Recipe Cycles

### Recipes API Request Actions

* `fetchAllRecipes`
  0. invoked from `RecipesIndex` `didMount`/`willReceiveProps`
  0. `GET /api/recipes` is called.
  0. `receiveAllRecipes` is set as the success callback.

* `createRecipe`
  0. invoked from new note button `onClick`
  0. `POST /api/recipes` is called.
  0. `receiveSingleRecipe` is set as the success callback.

* `fetchSingleRecipe`
  0. invoked from `RecipeDetail` `didMount`/`willReceiveProps`
  0. `GET /api/recipes/:id` is called.
  0. `receiveSingleRecipe` is set as the success callback.

* `updateRecipe`
  0. invoked from `RecipeForm` `onSubmit`
  0. `POST /api/recipes` is called.
  0. `receiveSingleRecipe` is set as the success callback.

* `destroyRecipe`
  0. invoked from delete note button `onClick`
  0. `DELETE /api/recipes/:id` is called.
  0. `removeRecipe` is set as the success callback.

### Recipes API Response Actions

* `receiveAllRecipes`
  0. invoked from an API callback
  0. the `RecipeReducer` updates `recipes` in the application's state.

* `receiveSingleRecipe`
  0. invoked from an API callback
  0. the `RecipeReducer` updates `recipes[id]` in the application's state.

* `removeRecipe`
  0. invoked from an API callback
  0. the `RecipeReducer` removes `recipes[id]` from the application's state.

## Vegetable Cycles

### Vegetables API Request Actions

* `fetchAllVegetables`
  0. invoked from `VegetablesIndex` `didMount`/`willReceiveProps`
  0. `GET /api/vegetables` is called.
  0. `receiveAllVegetables` is set as the success callback.

* `createVegetable`
  0. invoked from new vegetable button `onClick`
  0. `POST /api/vegetables` is called.
  0. `receiveSingleVegetable` is set as the callback.

* `fetchSingleVegetable`
  0. invoked from `VegetableDetail` `didMount`/`willReceiveProps`
  0. `GET /api/vegetables/:id` is called.
  0. `receiveSingleVegetable` is set as the success callback.

* `updateVegetable`
  0. invoked from `VegetableForm` `onSubmit`
  0. `POST /api/vegetables` is called.
  0. `receiveSingleVegetable` is set as the success callback.

* `destroyVegetable`
  0. invoked from delete vegetable button `onClick`
  0. `DELETE /api/vegetables/:id` is called.
  0. `removeVegetable` is set as the success callback.

### Vegetables API Response Actions

* `receiveAllVegetables`
  0. invoked from an API callback.
  0. The `Vegetable` reducer updates `vegetables` in the application's state.

* `receiveSingleVegetable`
  0. invoked from an API callback.
  0. The `Vegetable` reducer updates `vegetables[id]` in the application's state.

* `removeVegetable`
  0. invoked from an API callback.
  0. The `Vegetable` reducer removes `vegetables[id]` from the application's state.

## SearchSuggestion Cycles

* `fetchSearchSuggestions`
  0. invoked from `VegetableSearchBar` `onChange` when there is text
  0. `GET /api/vegetables` is called with `text` param.
  0. `receiveSearchSuggestions` is set as the success callback.

* `receiveSearchSuggestions`
  0. invoked from an API callback.
  0. The `SearchSuggestion` reducer updates `suggestions` in the application's state.

* `removeSearchSuggestions`
  0. invoked from `VegetableSearchBar` `onChange` when empty
  0. The `SearchSuggestion` reducer resets `suggestions` in the application's state.
