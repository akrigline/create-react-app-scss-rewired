/* ACTION CREATOR FUNCTIONS
Put here the functions that return an action object that can be dispatched
HINT: Always use functions for consistency, don't export plain objects
*/

import * as types from './types'

const quack = (payload) => ({
  type: types.QUACK,
  payload: payload
})

const swim = (payload) => ({
  type: types.SWIM,
  payload: payload
})

// Can this be hygened? I think the patterns for adding an action/operation/type/reducer are pretty consistent and thus automatable.

export {
  quack,
  swim
}
