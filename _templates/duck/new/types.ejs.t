---
to: src/redux/<%= h.inflection.camelize(name, true) %>/types.js
---
<% if(locals.document){ -%>
/* ACTION TYPE CONSTANTS
You can use any convention you wish here, but the name should remain UPPER_SNAKE_CASE for consistency.
*/
<% } -%>
<% if(locals.dummy){ -%>
const QUACK = 'exampleApp/<%= h.inflection.camelize(name, true) %>/QUACK'
<% } -%>
export {
<% if(locals.dummy){ -%>
  QUACK
<% } -%>
}
