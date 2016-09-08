import React from 'react';
import RecipeIndexItem from './recipe_index_item.jsx';

const RecipeIndex = ({recipes}) => {
  return (
    <section className="recipe-index-wrapper">
      <ul className="recipe-index">
        {recipes && Object.keys(recipes).map(
          (recipeId) => {
          return (<RecipeIndexItem key={recipeId} recipe={recipes[recipeId]}/>);
        })}
      </ul>
    </section>
  );
};

export default RecipeIndex;
