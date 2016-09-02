import React from 'react';
import {withRouter} from 'react-router';


const VegShow = ({veg, vegId, requestVegetable, children}) => {
  return(
    <div className="veg-show">
      {console.log(veg)}
      <h2 className="veg-name">{veg.name}</h2>
      <img className="veg-photo" src={veg.image}/>
      <p className="veg-description">
        {veg.description}
      </p>
    </div>
  );
};

export default withRouter(VegShow);
