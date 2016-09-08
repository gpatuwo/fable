import React from 'react';
import {Link} from 'react-router';
import NavBarContainer from './navbar/navbar.jsx';

const App = ({children}) => (
  <div>
    <NavBarContainer/>

    {children}
  </div>
);

export default App;
