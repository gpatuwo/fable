import React from 'react';
import VegIndexItem from './veg_index_item.jsx';

const VegIndex = ({vegetables, children}) => {
  return (
    <section className="veg-index-grid">
      <ul className="veg-index-grid">
        {vegetables && Object.keys(vegetables).map(
          (vegId) => {
          return (<VegIndexItem key={vegId} vegetable={vegetables[vegId]}/>);
        })}
      </ul>
    </section>
  );
};

export default VegIndex;
