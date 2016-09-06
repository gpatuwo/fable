import React from 'react';
import {withRouter} from 'react-router';

const handleDelete = (deleteRecipe, router) => (
  () => {
    deleteRecipe();
    router.push("recipes");
  }
);

const handleEdit = (recipeId, router) => (
  () => {
    router.push(`recipes/${recipeId}/edit`);
  }
);

const RecipeShow = ({recipe, recipeId,
  requestRecipe, deleteRecipe,
  router, currentUser}) => {
    console.log(recipe);
  return(
    <div className="recipe-show">
      <h2 className="recipe-title">{recipe.title}</h2>
      <h4 className="recipe-author">{recipe.author_id}</h4>
      <img className="recipe-photo" src={recipe.image}/>
      <p className="recipe-ingredients">
        {recipe.ingredients}
      </p>
      <p className="recipe-instructions">
        {recipe.instructions}
      </p>
      { currentUser ?
        (<div className='recipe-show-buttons'>
          <button onClick={handleEdit(recipeId, router)}>
            Edit recipe
          </button>
          <button onClick={handleDelete(deleteRecipe, router)}>
            Delete recipe
          </button>
        </div>
      ) : ""}
    </div>
  );
};

export default withRouter(RecipeShow);
