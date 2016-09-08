import React from 'react';
import {Link} from 'react-router';
import NavBar from './nav_bar/nav_bar.jsx';

const App = ({children}) => (
  <div>
    <NavBar/>

    {children}
  </div>
);

export default App;
