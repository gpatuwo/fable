import React from 'react';
// Router
import { Router, Route, IndexRoute, hashHistory } from 'react-router';

// Components
import App from '../App.jsx';
import SessionFormContainer from '../session_form/session_form_container';
import VegFormContainer from '../veg_form/veg_form_container.js';
import VegShowContainer from '../veg_show/veg_show_container.js';

class AppRouter extends React.Component{
  constructor(props){
    super(props);
    this._ensureLoggedIn = this._ensureLoggedIn.bind(this);
    this._redirectIfLoggedIn = this._redirectIfLoggedIn.bind(this);
    this.vegetables = this.vegetables.bind(this);
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

  vegetables(){
    this.props.fetchVegetables();
  }

  render(){
    return(
      <Router history={ hashHistory }>
        <Route path="/" component={ App }>

          <Route path="login" component={ SessionFormContainer }
            onEnter={this._redirectIfLoggedIn}/>
          <Route path="signup" component={ SessionFormContainer }
            onEnter={this._redirectIfLoggedIn}/>
          <Route path="vegetables" onEnter={this.vegetables}>
            <Route path="new" component= {VegFormContainer} onEnter={this._ensureLoggedIn}/>
            <Route path=":vegId" component={VegShowContainer}/>
          </Route>
        </Route>
      </Router>
    );
  }
}

export default AppRouter;
