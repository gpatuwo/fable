import React from 'react';
import {withRouter} from 'react-router';

const handleClick = (router, url) => (
  () => router.push(url)
);

const RecipeIndexItem = ({recipe, router}) => (
    <li className="recipe-index-item"
      onClick={handleClick(router,  `recipes/${recipe.id}`)}>
      <div className="recipe-index-photo-wrapper">
        <img className="recipe-index-photo" src={recipe.image}/>
      </div>
      {/*<div className="recipe-triangle"/>*/}
      <div className="recipe-index-info-wrapper">
        <h2 className="recipe-index-title">
          {recipe.title}</h2>
        <p className="recipe-index-ingredients">
          {recipe.ingredients}
        </p>
      </div>
    </li>

);

export default withRouter(RecipeIndexItem);
