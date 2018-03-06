---
to: src/containers/smart<%= h.inflection.camelize(name) %>/smart<%= h.inflection.camelize(name) %>.js
---

import { connect } from 'react-redux'
<% if(locals.duck){ -%>
import { <%= duck %>Operations, <%= duck %>Selectors } from '../../redux/<%= duck %>'
<% }else{ -%>
import { duckOperations, duckSelectors } from '../../redux/duck'
<% } -%>
import <%= h.inflection.camelize(name) %> from '../../components/<%= h.inflection.camelize(name, true) %>/<%= h.inflection.camelize(name, true) %>'

<% if(locals.document){ -%>
/**
 * Maps individual bits of state from redux to props that
 * our contained component can access.
 *
 * @param {Object} state `connect` supplies us with the entire state object
 * @param {Object} ownProps
 */
<% } -%>
const mapStateToProps = (state, ownProps) => ({
  distance: state.duck.distance,
<% if(locals.duck){ -%>
  isTooFar: <%= duck %>Selectors.checkIfDuckIsInRange(state)
<% }else{ -%>
  isTooFar: duckSelectors.checkIfDuckIsInRange(state)
<% } -%>
})

<% if(locals.document){ -%>
/**
 * Maps redux action dispatches to props that our contained component
 * can use.
 *
 * @param {any} dispatch `connect` supplies us with dispatch so we can call redux actions
 * @param {Object} ownProps
 */
<% } -%>
const mapDispatchToProps = (dispatch, ownProps) => ({
  quack: () => {
<% if(locals.duck){ -%>
    dispatch(<%= duck %>Operations.simpleQuack())
<% }else{ -%>
    dispatch(duckOperations.simpleQuack())
<% } -%>
  }
})

export {
  mapStateToProps,
  mapDispatchToProps
}

export default connect(mapStateToProps, mapDispatchToProps)(<%= h.inflection.camelize(name) %>)
