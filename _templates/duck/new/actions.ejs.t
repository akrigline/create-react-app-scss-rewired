---
to: src/redux/<%= h.inflection.camelize(name, true) %>/actions.js
---
<% if(locals.document){ -%>
/* ACTION CREATOR FUNCTIONS
Put here the functions that return an action object that can be dispatched
HINT: Always use functions for consistency, don't export plain objects
*/
<% } -%>
import * as types from './types'
<% if(locals.dummy){ %>
const quack = (payload) => ({
  type: types.QUACK,
  payload: payload
})
<% } -%>
export {
<% if(locals.dummy){ -%>
  quack
<% } -%>
}