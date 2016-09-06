import React from 'react';
import VegIndexItem from './veg_index_item.jsx';

const VegIndex = ({vegetables}) => {
  return (
    <section className="index-grid">
      <ul className="index-grid">
        {vegetables && Object.keys(vegetables).map(
          (vegId) => {
          return (<VegIndexItem key={vegId} vegetable={vegetables[vegId]}/>);
        })}
      </ul>
    </section>
  );
};

export default VegIndex;
