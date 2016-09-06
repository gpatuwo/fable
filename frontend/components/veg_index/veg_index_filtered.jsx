import React from 'react';
import VegIndexItem from './veg_index_item.jsx';

const VegIndexFiltered = ({vegetables, children}) => {
  return (
    <section className="veg-index-grid">
      <h1 className="index-header">
        Here are the vegetables in-season this month:
      </h1>
      <ul className="veg-index-grid">
        {vegetables && Object.keys(vegetables).map(
          (vegId) => {
            const month = Date().split(" ")[1].toLowerCase();
            const vegAtMonth = vegetables[vegId][month];
            if (vegAtMonth === true) {
              return (
                <VegIndexItem key={vegId} vegetable={vegetables[vegId]}/>
              );
            }
        })}
      </ul>
    </section>
  );
};

export default VegIndexFiltered;
