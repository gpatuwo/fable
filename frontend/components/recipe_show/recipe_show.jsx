import React from 'react';
import {withRouter} from 'react-router';
import CommentFormContainer from './comment_form_container.js';

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
  return(
    <div className="recipe-show-page">
      <img className="recipe-photo" src={recipe.image}/>
      <section className="recipe-show-info">
        <h2 className="recipe-title">{recipe.title}</h2>
        <h4 className="recipe-author"><em>by</em> {recipe.author_name}</h4>

        <p className="recipe-ingredients">
          {recipe.ingredients}
        </p>
        <br />
        <p className="recipe-instructions">
          {recipe.instructions}
        </p>
        { currentUser &&
          (currentUser.username === "Grace" ||
          currentUser.id === recipe.author_id) ?
          (<div className='recipe-show-buttons'>
          <button onClick={handleEdit(recipeId, router)}>
            Edit recipe
          </button>
          <button onClick={handleDelete(deleteRecipe, router)}>
            Delete recipe
          </button>
        </div>
      ) : ""}
      </section>

      <div className="comments-wrapper">
        <CommentFormContainer recipeId={recipe.id}/>
      </div>
    </div>
  );
};

export default withRouter(RecipeShow);
