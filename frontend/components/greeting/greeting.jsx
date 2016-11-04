import React from 'react';

var date = new Date();
var monthNowIndex = date.getMonth();
const monthNames = ["January", "February", "March", "April", "May", "June",
  "July", "August", "September", "October", "November", "December"
];

const Greeting = () => (
  <section className="greeting-wrapper">
    <div className="greeting-content">
      <h1 className="greeting-head">Welcome to Fable</h1>
      <p className="greeting-caption">
        Here are the vegetables in-season in San Francisco
        for {monthNames[monthNowIndex]}.<br/>
        Click on the vegetables to see recipes.
      </p>
    </div>
  </section>
);

export default Greeting;
