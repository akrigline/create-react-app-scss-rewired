/* TESTS FILE
You can test here all the different parts of the duck.
Most obvious is to start with the reducer and selector functions which should be straight forward (pure functions)
*/

import reducer from './reducers'
import * as actions from './actions'
import { checkIfDuckIsInRange } from './selectors'

describe('duck reducer', () => {
  describe('quack', () => {
    const quack = actions.quack()
    const initialState = {
      quacking: false,
      distance: 0
    }

    const result = reducer(initialState, quack)

    it('should quack', () => {
      expect(result).toEqual({
        quacking: true,
        distance: 0
      })
    })
  })
  describe('distance', () => {
    const swim = actions.swim(1000)
    const initialState = {
      quacking: false,
      distance: 0
    }

    const result = reducer(initialState, swim)

    it('should change the distance', () => {
      expect(result).toEqual({
        quacking: false,
        distance: 1000
      })
    })
  })
})

describe('duck selectors', () => {
  describe('checkIfDuckIsInRange', () => {
    const state = {
      duck: {
        distance: 2000
      }
    }
    const result = checkIfDuckIsInRange(state)
    expect(result).toBe(true)
  })
})
