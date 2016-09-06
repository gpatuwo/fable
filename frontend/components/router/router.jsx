import React from 'react';
// Router
import { Router, Route, IndexRoute, hashHistory } from 'react-router';

// Components
import App from '../App.jsx';
import SessionFormContainer from '../session_form/session_form_container';
import VegFormContainer from '../veg_form/veg_form_container.js';
import VegShowContainer from '../veg_show/veg_show_container.js';
import VegEditFormContainer from '../veg_edit/veg_edit_form_container.js';
import VegIndexContainer from '../veg_index/veg_index_container.js';
import VegIndexFilteredContainer from
 '../veg_index/veg_index_filtered_container.js';
import RecipeIndexContainer from '../recipe_index/recipe_index_container.js';
import RecipeShowContainer from '../recipe_show/recipe_show_container.js';

class AppRouter extends React.Component{
  constructor(props){
    super(props);
    this._ensureLoggedIn = this._ensureLoggedIn.bind(this);
    this._redirectIfLoggedIn = this._redirectIfLoggedIn.bind(this);
    this.vegetables = this.vegetables.bind(this);
    this.recipes = this.recipes.bind(this);
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

  recipes(){
    this.props.fetchRecipes();
  }

  render(){
    return(
      <Router history={ hashHistory }>
        <Route path="/"
          onEnter={this.vegetables}
          component={ App }>
          <IndexRoute
            component={VegIndexFilteredContainer}/>
          <Route path="login"
            component={ SessionFormContainer }
            onEnter={this._redirectIfLoggedIn}/>
          <Route path="signup"
            component={ SessionFormContainer }
            onEnter={this._redirectIfLoggedIn}/>
          <Route path="vegetables"
           onEnter={this.vegetables}>
            <IndexRoute component={VegIndexContainer}/>
            <Route path="new"
              component= {VegFormContainer}
              onEnter={this._ensureLoggedIn}/>
            <Route path=":vegId"
              component={VegShowContainer}/>
            <Route path=":vegId/edit"
              component={VegEditFormContainer}/>
          </Route>
          <Route path="recipes"
            onEnter={this.recipes}>
            <IndexRoute component={RecipeIndexContainer}/>
            <Route path=":recipeId"
              component={RecipeShowContainer}/>
          </Route>)
        </Route>
      </Router>
    );
  }
}

export default AppRouter;
