import React from 'react';
import {withRouter} from 'react-router';


const VegShow = ({veg, vegId, requestVegetable, children}) => {
  return(
    <div className="veg-show">
      <img className="veg-photo" src={veg.image}/>
      <h2 className="veg-name">{veg.name && veg.name.toLowerCase()}</h2>
      <p className="veg-description">
        {veg.description}
      </p>
    </div>
  );
};

export default withRouter(VegShow);
