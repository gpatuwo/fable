import React from 'react';
import {Link} from 'react-router';
import NavBar from './nav_bar/nav_bar.jsx';
import GreetingContainer from './greeting/greeting_container';

const App = ({children}) => (
  <div>
    <NavBar/>
    <GreetingContainer/>
    {children}
  </div>
);

export default App;
