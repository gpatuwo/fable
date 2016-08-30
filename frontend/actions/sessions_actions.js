export const SessionConstant = {
  LOGIN: 'LOGIN',
  LOGOUT: 'LOGOUT',
  SIGNUP: 'SIGNUP',
  RECEIVE_CURRENT_USER: 'RECEIVE_CURRENT_USER',
  RECEIVE_ERRORS: 'RECEIVE_ERRORS'
};

export const signup = user => ({
  type: SessionConstant.SIGNUP,
  user
})

export const login = user => ({
  type: SessionConstant.LOGIN,
  user
})

export const logout = () => ({
  type: SessionConstant.LOGOUT
})

export const receiveCurrentUser = currentUser => ({
  type: SessionConstant.RECEIVE_CURRENT_USER,
  currentUser
})

export const receiveErrors = errors => ({
  type: SessionCOnstants.RECEIVE_ERRORS,
  errors
})
