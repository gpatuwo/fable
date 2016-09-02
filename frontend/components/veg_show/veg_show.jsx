import React from 'react';
import {withRouter} from 'react-router';

const handleDelete = (deleteVegetable, router) => (
  () => {
    deleteVegetable();
    router.push("vegetables");
  }
);
const VegShow = ({veg, vegId, requestVegetable, deleteVegetable, router}) => {
  return(
    <div className="veg-show">
      <img className="veg-photo" src={veg.image}/>
      <h2 className="veg-name">{veg.name && veg.name.toLowerCase()}</h2>
      <p className="veg-description">
        {veg.description}
      </p>
      <button onClick={handleDelete(deleteVegetable, router)}>
        Delete veg
      </button>
    </div>
  );
};

export default withRouter(VegShow);
