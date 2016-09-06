import React from 'react';
import {Link} from 'react-router';
import GreetingContainer from './greeting/greeting_container';
{/*import VegIndexFilteredContainer from '../veg_index/veg_index_filtered_container.js';*/}

const App = ({children}) => (
  <div>
    <header>
      <Link to="/" className='header-logo'>
        <img src="assets/fable-tag-logo.png"/>
      </Link>
      <GreetingContainer/>
    </header>
{/*    <section>
      <VegIndexFilteredContainer/>
    </section>*/}
    {children}

  </div>
);

export default App;
