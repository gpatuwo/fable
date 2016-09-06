import React from 'react';
import {withRouter} from 'react-router';

const handleClick = (router, url) => (
  () => router.push(url)
);

const RecipeIndexItem = ({recipe, router}) => (
    <li className="index-item"
      onClick={handleClick(router,  `recipes/${recipe.id}`)}>
      <img className="index-photo" src={recipe.image}/>
      <h2 className="grid-name">
        {recipe.title && recipe.title.toLowerCase()}</h2>
    </li>

);

export default withRouter(RecipeIndexItem);
