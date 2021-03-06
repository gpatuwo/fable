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
import RecipeFormContainer from '../recipe_form/recipe_form_container.js';
import RecipeEditFormContainer from
 '../recipe_edit/recipe_edit_form_container.js';
import CommentFormContainer from '../recipe_show/comment_form_container.js';

class AppRouter extends React.Component{
  constructor(props){
    super(props);
    this._ensureLoggedIn = this._ensureLoggedIn.bind(this);
    this._ensureGrace = this._ensureGrace.bind(this);
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

  _ensureGrace(nextState,replace){
    const currentUser = this.props.currentUser;
    if (!currentUser || (currentUser.username !=='Grace')) {
      replace('/');
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
           <IndexRoute
             component={VegIndexContainer}/>
            <Route path="new"
              component= {VegFormContainer}
              onEnter={this._ensureGrace}/>
            <Route path=":vegId"
              onEnter={this._ensureGrace}
              component={VegShowContainer}/>
            <Route path=":vegId/edit"
              onEnter={this._ensureGrace}
              component={VegEditFormContainer}/>
          </Route>
          <Route path="recipes"
            onEnter={this.recipes}>
            <IndexRoute component={RecipeIndexContainer}/>
            <Route path="new"
              component={RecipeFormContainer}
              onEnter={this._ensureLoggedIn}/>
            <Route path=":recipeId"
              component={RecipeShowContainer}>
              <Route path="comment"
                component={CommentFormContainer}
                onEnter={this._ensureLoggedIn}/>
            </Route>
            <Route path=":recipeId/edit"
              onEnter={this._ensureLoggedIn}
              component={RecipeEditFormContainer}/>
          </Route>)
        </Route>
      </Router>
    );
  }
}

export default AppRouter;
