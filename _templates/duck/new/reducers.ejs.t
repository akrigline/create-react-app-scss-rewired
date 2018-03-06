---
to: src/redux/<%= h.inflection.camelize(name, true) %>/reducers.js
---
<% if(locals.document){ -%>
/* REDUCER(S)
It's a good practice to define your state shape first.
Based on the state shape, multiple reducers might be defined in this file, combined and exported into a single reducer function.
*/
<% } -%>
import {combineReducers} from 'redux'
import * as types from './types'

/* State Shape
{
<% if(locals.dummy){ -%>
  quacking: bool
<% } -%>
}
*/
<% if(locals.dummy){ %>
const quackReducer = (state = false, action) => {
  switch (action.type) {
    case types.QUACK:
      // Logic
      return true
    default:
      return state
  }
}
<% } -%>

const reducer = combineReducers({
<% if(locals.dummy){ -%>
  quacking: quackReducer
<% } -%>
})

export default reducer
