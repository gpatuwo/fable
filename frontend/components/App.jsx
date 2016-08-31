import React from 'react';
import {Link} from 'react-router';
import NavBarContainer from './nav_bar/nav_bar_container.js';
import GreetingContainer from './greeting/greeting_container';

const App = ({children}) => (
  <div>
    <header>
      <Link to="/" className='header-logo'>
        <img src="assets/fable-tag-logo.png"/>
      </Link>
      <GreetingContainer/>
    </header>
    {children}
  </div>
);

export default App;
