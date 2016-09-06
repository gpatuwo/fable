{/*the root's purpose is to wrap the App component
  with a Provider the provider gives all of the components
  access to the Store (thus allows them to read application
   state and dispatch actions) */}

import React from 'react';
import { Provider } from 'react-redux';
import AppRouterContainer from './router/router_container';


const Root = ({store}) => (
  <Provider store={store}>
    <AppRouterContainer/>
  </Provider>
);

export default Root;
