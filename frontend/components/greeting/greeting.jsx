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
      onClick={ () => router.push("/vegetables/new")}>New Veg</button>
    <button className='header-button' onClick={logout}>Log Out</button>
  </div>
);

const Greeting = ({currentUser, router, logout}) => {
  if (currentUser) {
    return personalGreeting(currentUser, router, logout);
  } else {
    return sessionLinks();
  }
};

export default withRouter(Greeting);
