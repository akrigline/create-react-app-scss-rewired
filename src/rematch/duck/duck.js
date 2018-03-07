const initialState = {
  quacking: false,
  distanceSwum: 0
}

const fooReducer = (state, payload) => {
  return {
    ...state,
    quacking: false
  }
}

const barReducer = (state, payload) => {
  return {
    ...state,
    quacking: true,
    distanceSwum: state.distanceSwum + 10
  }
}

// This Wipes out the entire state object for state.duck
// This setup is not one of one reducer per state key
// DO NOT DO THIS
const quackingReducer = (state, payload) => {
  return false
}

export default {
  state: initialState,
  reducers: {
    foo: fooReducer,
    bar: barReducer,
    quacking: quackingReducer
  }
}
