import {createStore, combineReducers} from 'redux'

import duck from './duck'

const configureStore = () => {
  const rootReducer = combineReducers({
    duck
  })

  return createStore(
    rootReducer,
    {}, // initialState ?
    window.__REDUX_DEVTOOLS_EXTENSION__ && window.__REDUX_DEVTOOLS_EXTENSION__() // This only works without any other middleware. https://github.com/zalmoxisus/redux-devtools-extension#11-basic-store
  )
}

export default configureStore
