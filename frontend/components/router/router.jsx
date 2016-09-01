import React from 'react';
// Router
import { Router, Route, IndexRoute, hashHistory } from 'react-router';

// Components
import App from '../App.jsx';
import SessionFormContainer from '../session_form/session_form_container';
import VegFormContainer from '../veg_form/veg_form_container.js';


class AppRouter extends React.Component{
  constructor(props){
    super(props);
    this._ensureLoggedIn = this._ensureLoggedIn.bind(this);
    this._redirectIfLoggedIn = this._redirectIfLoggedIn.bind(this);
  }

  _ensureLoggedIn(nextState, replace){
    const currentUser = this.props.currentUser;
    if (!currentUser) {
      replace('/login');
    }
  }

  _redirectIfLoggedIn(nextState, replace){
    const currentUser = this.props.currentUser;
    if (currentUser) {
      replace('/');
    }
  }

  render(){
    return(
      <Router history={ hashHistory }>
        <Route path="/" component={ App }>

          <Route path="login" component={ SessionFormContainer }
            onEnter={this._redirectIfLoggedIn}/>
          <Route path="signup" component={ SessionFormContainer }
            onEnter={this._redirectIfLoggedIn}/>
          <Route path="vegetables/new" component= {VegFormContainer} onEnter={this._ensureLoggedIn}/>
        </Route>
      </Router>
    );
  }
}

export default AppRouter;
