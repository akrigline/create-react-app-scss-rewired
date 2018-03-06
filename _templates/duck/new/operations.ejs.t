---
to: src/redux/<%= h.inflection.camelize(name, true) %>/operations.js
---
<% if(locals.document){ -%>
/* OPERATIONS = REDUX THUNKS
This file defines the public interface of the duck -- what can be dispatched from components
Simple operations are just about forwarding an action creator, ex: simpleQuack
Complex operations involve returning a thunk that dispatches multiple actions in a certain order, ex: complexQuack
*/
<% } -%>
import * as actions from './actions'
<% if(locals.dummy){ -%>
const simpleQuack = actions.quack
<% } -%>
export {
<% if(locals.dummy){ -%>
  simpleQuack
<% } -%>
}
