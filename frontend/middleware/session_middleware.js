import { receiveCurrentUser,
          receiveErrors,
          SessionConstant
        } from '../actions/sessions_actions';

import { login, singup, logout } from '../util/session_util';

export default ({ getState, dispatch }) => next => action => {
  const successCallback = user => dispatch(receiveCurrentUser(user));
  const errorCallback = xhr => {
    const errors = xhr.responseJSON;
    dispatch(receiveErrors(errors));
  };

  switch (action.type) {
    case SessionConstant.LOGIN:
      login(action.user, successCallback, errorCallback)
      return next(action);
    case SessionConstant.LOGOUT:
      logout(() => next(action));
      break;
    case SessionConstant.SIGNUP:
      signup(action.user, successCallback, errorCallback)
      return next(action);
    default:
      return next(action);
  }
}
