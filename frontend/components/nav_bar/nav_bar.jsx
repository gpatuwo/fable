import React from 'react';
import {Link} from 'react-router';

const NavBar = () => (
  <header className="header">
    <nav className="header-nav group">

      <Link to="/vegetables" className='header-logo'>
        <img src="assets/fable_white.png"/>
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

        <li className='header-links'>
          <Link to="#">
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

        <li className='header-links'>
          <label className="header-search-wrapper">
            <input type="text"
              className="header-search"
              placeholder="Search"/>
          </label>
        </li>
      </ul>
    </nav>
  </header>
);

export default NavBar;
