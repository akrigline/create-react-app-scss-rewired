---
to: src/redux/<%= h.inflection.camelize(name, true) %>/<%= h.inflection.camelize(name, true) %>.test.js
---
<% if(locals.document){ -%>
/* TESTS FILE
You can test here all the different parts of the duck.
Most obvious is to start with the reducer and selector functions which should be straight forward (pure functions)
*/
<% } -%>
import reducer from './reducers'
import * as actions from './actions'
<% if(locals.dummySelectors){ -%>
import { checkIfDuckIsInRange } from './selectors'
<% } -%>

describe('<%= h.inflection.humanize(name) %> Reducer', () => {
<% if(locals.dummy){ -%>
  describe('quack', () => {
    const quack = actions.quack()
    const initialState = {
      quacking: false
    }

    const result = reducer(initialState, quack)

    it('should quack', () => {
      expect(result).toEqual({
        quacking: true
      })
    })
  })
<% } -%>
})

<% if(locals.dummy){ -%>
describe('<%= h.inflection.humanize(name) %> Selectors', () => {
  describe('checkIfDuckIsInRange', () => {
    const state = {
      <%= h.inflection.camelize(name, true) %>: {
        distance: 2000
      }
    }
    const result = checkIfDuckIsInRange(state)
    expect(result).toBe(true)
  })
})
<% } %>
