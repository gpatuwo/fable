import React from 'react';
import {Link, withRouter} from 'react-router';

const sessionLinks = () => {
  return (
    <li className='header-links'>
      <Link to="">
        Profile
      </Link>
      <ul className="header-profile">
        <li>
          <Link to="/login" className="header-profile-action">
            Login</Link>
        </li>
        <li>
          <Link to="/signup" className="header-profile-action">
            Sign Up</Link>
        </li>
      </ul>
    </li>

  );
};

const personalGreeting = (currentUser, router, logout) => {
  return (
    <li className='header-links'>
      <Link to="#">
        Hi, {currentUser.username}!
      </Link>
      <ul className="header-profile">
        <li>
          <Link to="#"
            className="header-profile-action"
            onClick={logout}>
            Log Out
          </Link>
        </li>
      </ul>
    </li>

  );
};


const NavBar = ({currentUser, router, logout}) => (
  <header className="header">
    <nav className="header-nav">

      <Link to="/" className='header-logo'>
        <img src="assets/fable_white.png" className="logo"/>
      </Link>

      <ul className="header-list group">
        <li className='header-links'>
          <Link to="/recipes">
            All Recipes
          </Link>
        </li>

        <li className='header-links'>
          <Link to="/recipes/new">
            Submit Recipe
          </Link>
        </li>

        { currentUser ?
          personalGreeting(currentUser, router, logout) : sessionLinks() }

      </ul>
    </nav>
  </header>
);

export default withRouter(NavBar);
