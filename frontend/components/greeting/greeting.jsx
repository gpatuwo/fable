import React from 'react';
import { Link, withRouter} from 'react-router';

const sessionLinks = () => (
  <nav className='login-signup'>
    <Link to="/login" activeClassName='current'>Login</Link>
    &nbsp;or&nbsp;
    <Link to='/signup' activeClassName='current'>Sign up</Link>
  </nav>
)

const personalGreeting = (currentUser, logout) => (
  <div>
    <h2 className='header-greeting'>Welcome back, {currentUser.username}!</h2>
    <button className='header-button' onClick={logout}>Log Out</button>
  </div>
)

const Greeting = ({currentUser, logout}) => {
  if (currentUser) {
    return personalGreeting(currentUser, logout);
  } else {
    return sessionLinks();
  }
}

export default withRouter(Greeting);
