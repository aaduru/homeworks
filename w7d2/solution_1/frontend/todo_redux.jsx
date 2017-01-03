import React from 'react';
import ReactDOM from 'react-dom';
import configureStore from './store/store';

import Root from './components/root';
import { applyMiddleware } from 'redux';

document.addEventListener('DOMContentLoaded', () => {
  const preloadedState = localStorage.state ?
    JSON.parse(localStorage.state) : {};
  const store = configureStore(preloadedState);

  const root = document.getElementById('content');

  // const newStore = applyMiddlewares(store, addLoggingToDispatch);
  ReactDOM.render(<Root store={store} />, root);
});


// Log store.getState() - this is the old state
// Log the action
// Call your local copy of store.dispatch, passing it the action
// Log store.getState() again - this is the new state
