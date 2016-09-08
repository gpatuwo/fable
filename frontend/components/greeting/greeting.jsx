import React from 'react';
import { Link, withRouter} from 'react-router';

const sessionLinks = () => (
  <nav className='login-signup'>
    <Link to="/login" activeClassName='current'>Login</Link>
    &nbsp;or&nbsp;
    <Link to='/signup' activeClassName='current'>Sign up</Link>
  </nav>
);

const personalGreeting = (currentUser, router, logout) => (
  <div className="welcome-logout">
    <p className='header-greeting'>Welcome back, {currentUser.username}!</p>
    <button className='header-button'
      onClick={ () => router.push("/recipes")}>All Recipes</button>
    <button className='header-button'
      onClick={ () => router.push("/recipes/new")}>New Recipe</button>
    <button className='header-button'
      onClick={ () => router.push("/vegetables")}>All Veg</button>
    <button className='header-button'
      onClick={ () => router.push("/vegetables/new")}>New Veg</button>
    <button className='header-button' onClick={logout}>Log Out</button>
  </div>
);

const Greeting = ({currentUser, router, logout}) => {
  return(
    <section className="greeting-wrapper">
      <div className="greeting-content">
        <h1 className="greeting-head">Welcome to Fable</h1>
        <p className="greeting-caption">
          Here are the vegetables in-season in San Francisco right now.<br/>
          Click on the vegetables to see recipes.
        </p>
      </div>
    </section>
  );
};

export default withRouter(Greeting);
