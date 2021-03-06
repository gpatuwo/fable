import React from 'react';
import {withRouter} from 'react-router';

const handleClick = (router, url) => (
  () => router.push(url)
);

const VegIndexItem = ({vegetable, router}) => (
    <li className="index-item"
      onClick={handleClick(router,  `vegetables/${vegetable.id}`)}>
      <img className="index-photo" src={vegetable.image}/>
      <h2 className="grid-name">
        {vegetable.name && vegetable.name.toLowerCase()}</h2>
    </li>

);

export default withRouter(VegIndexItem);
