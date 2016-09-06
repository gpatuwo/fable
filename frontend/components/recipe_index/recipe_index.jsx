import React from 'react';
import RecipeIndexItem from './recipe_index_item.jsx';

const RecipeIndex = ({recipes}) => {
  return (
    <section className="index-grid">
      <ul className="veg-index-grid">
        {recipes && Object.keys(recipes).map(
          (recipeId) => {
          return (<RecipeIndexItem key={recipeId} recipe={recipes[recipeId]}/>);
        })}
      </ul>
    </section>
  );
};

export default RecipeIndex;
