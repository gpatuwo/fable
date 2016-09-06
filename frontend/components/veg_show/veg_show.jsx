import React from 'react';
import {withRouter} from 'react-router';

const handleDelete = (deleteVegetable, router) => (
  () => {
    deleteVegetable();
    router.push("vegetables");
  }
);

const handleEdit = (vegId, router) => (
  () => {
    router.push(`vegetables/${vegId}/edit`);
  }
);

const VegShow = ({veg, vegId,
  requestVegetable, deleteVegetable,
  router, currentUser}) => {
  return(
    <div className="page-show">
      <img className="veg-photo" src={veg.image}/>
      <h2 className="veg-name">{veg.name && veg.name.toLowerCase()}</h2>
      <p className="veg-description">
        {veg.description}
      </p>
      { currentUser && (currentUser.username === "Grace") ?
        (<div className='veg-show-buttons'>
          <button onClick={handleEdit(vegId, router)}>
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
