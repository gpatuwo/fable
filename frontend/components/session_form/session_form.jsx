import React from 'react';
import { Link, hashHistory } from 'react-router';

class SessionForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      username: "",
      password: ""
    };
    this.handleSubmit = this.handleSubmit.bind(this);
    this.handleGuest = this.handleGuest.bind(this);
  }

  componentDidUpdate(){
    this.redirectIfLoggedIn();
  }

  redirectIfLoggedIn(){
    if (this.props.loggedIn) {
      hashHistory.push("/");
    }
  }

  update(field){
    return e => { this.setState({[field]: e.currentTarget.value}); };
  }

  handleSubmit(e){
    e.preventDefault();
    const user = this.state;
    this.props.processForm({user});
  }

  navLink(){
    if (this.props.formType === "login") {
      return <Link to='/signup'>sign up instead</Link>;
    } else {
      return <Link to='/login'>log in instead</Link>;
    }
  }

  handleGuest(e){
    e.preventDefault();
    const user = {username: "Guest", password: "password"};
    this.props.login({user});
  }

  renderErrors(){
    return(
      <ul>
        {this.props.errors.map( (error, i) => (
            <li key={`error-${i}`}>
              {error}
            </li>
        ))}
      </ul>
    );
  }

  render(){
    return (
      <div className="login-page">
        <div className="login-form-container">
          <form onSubmit={this.handleSubmit} className='login-form-box'>
            <h1 className="login-title">Welcome to Fable!</h1>
            <p className="login-instruction">Please { this.props.formType} or {this.navLink()}
            </p>
            <ul className="login-errors">{this.renderErrors()}</ul>
            <div className="login-form">
              <input type="text"
                  value={this.state.username}
                  onChange={this.update("username")}
                  className="login-input"
                  placeholder="Username"/>

              <input type="password"
                      value={this.state.password}
                      onChange={this.update('password')}
                      className="login-input"
                      placeholder="Password"/>
              <input type="submit"
                value="Submit"
                className="submit-button" />
              <input type="button"
                className="guest-account-button"
                onClick={this.handleGuest}
                value="Guest Account"/>

            </div>
          </form>
        </div>
      </div>

    );
  }

}

export default SessionForm;
