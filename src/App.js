import React from 'react';
import About from './component/about/about';
import BookingApp from './component/booking/booking';
import Header from './component/header/header';
import { BrowserRouter as Router, Route } from 'react-router-dom';

export default () => {
  return (
      <Router>
        <Header />
        <Route path="/" exact component={BookingApp} />
        <Route path="/about" component={About} />
      </Router>
  )
}



