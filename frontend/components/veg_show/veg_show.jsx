import React from 'react';
import {withRouter} from 'react-router';

const handleDelete = (deleteVegetable, router) => (
  () => {
    deleteVegetable();
    router.push("vegetables");
  }
);

const handleEdit = (vegId, veg, updateVegetable) => (
  () => {
    updateVegetable(vegId, {vegetable:veg});
  }
);


const VegShow = ({veg, vegId,
  requestVegetable, deleteVegetable,
  router, currentUser, updateVegetable}) => {
  return(
    <div className="veg-show">
      <img className="veg-photo" src={veg.image}/>
      <h2 className="veg-name">{veg.name && veg.name.toLowerCase()}</h2>
      <p className="veg-description">
        {veg.description}
      </p>
      { currentUser ?
        (<div className='veg-show-buttons'>
          <button onClick={handleEdit(vegId, veg, updateVegetable)}>
            Edit veg
          </button>
          <button onClick={handleDelete(deleteVegetable, router)}>
            Delete veg
          </button>
        </div>
      ) : ""}
    </div>
  );
};

export default withRouter(VegShow);
