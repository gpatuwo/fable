import React from 'react';
import ReactDOM from 'react-dom';
import Greeting from './components/greeting/greeting'

document.addEventListener('DOMContentLoaded', () => {
  const root = document.getElementById('root')

  ReactDOM.render(<Greeting/>, root)

});
