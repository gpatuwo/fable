import React from 'react';
import {withRouter} from 'react-router';

const handleClick = (router, url) => (
  () => router.push(url)
);

const VegIndexItem = ({vegetable, router}) => (
    <li className="veg-index-item"
      onClick={handleClick(router,  `vegetables/${vegetable.id}`)}>
      <img className="veg-index-photo" src={vegetable.image}/>
      <h2 className="veg-grid-name">
        {vegetable.name && vegetable.name.toLowerCase()}</h2>
    </li>

);

export default withRouter(VegIndexItem);
