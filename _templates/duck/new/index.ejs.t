---
to: src/redux/<%= h.inflection.camelize(name, true) %>/index.js
---
<% if(locals.document){ -%>
/* INDEX FILE
This file, from a module perspective, behaves as the duck file form the original proposal.
It exports as default the reducer function of the duck.
It exports as named export the selectors and the operations.
Optionally it exports the actions and types if they are needed in other ducks.
*/
<% } -%>
import reducer from './reducers'

import * as <%= h.inflection.camelize(name, true) %>Selectors from './selectors'
import * as <%= h.inflection.camelize(name, true) %>Operations from './operations'
import * as <%= h.inflection.camelize(name, true) %>Actions from './actions'
import * as <%= h.inflection.camelize(name, true) %>Type from './types'

export {
  <%= h.inflection.camelize(name, true) %>Selectors,
  <%= h.inflection.camelize(name, true) %>Actions,
  <%= h.inflection.camelize(name, true) %>Operations,
  <%= h.inflection.camelize(name, true) %>Type
}

export default reducer
