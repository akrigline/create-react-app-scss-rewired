/* REDUCER(S)
It's a good practice to define your state shape first.
Based on the state shape, multiple reducers might be defined in this file, combined and exported into a single reducer function.
*/

import * as types from './types'

/* State Shape
{
  quacking: bool,
  distance: number
}
*/

const initialState = {
  quacking: false,
  distance: 0
}

const duckReducer = (state = initialState, action) => {
  switch (action.type) {
    case types.QUACK:
      // Logic
      return {
        ...state,
        quacking: true
      }
    case types.SWIM:
      const newDistance = state.distance + action.payload
      return {
        ...state,
        distance: newDistance
      }
    default:
      return state
  }
}

export default duckReducer
