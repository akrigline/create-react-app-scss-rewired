---
to: src/containers/smart<%= h.inflection.camelize(name) %>/smart<%= h.inflection.camelize(name) %>.test.js
---

import {mapStateToProps, mapDispatchToProps} from './smart<%= h.inflection.camelize(name) %>'

describe('Smart <%= h.inflection.humanize(name) %>', () => {
  describe('map state to props', () => {
    const state = {
      duck: {
        distance: 50
      }
    }
    const ownProps = {}
    const mappedProps = mapStateToProps(state, ownProps)
    it('should map the distance prop', () => {
      expect(mappedProps.distance).toEqual(50)
    })
  })

<% if(locals.document){ -%>
  /* There's a lot of talk in the redux community about how to test
   * these containers, some people mount them with a mocked store,
   * some people don't test them at all as they're usually quite simple
   * functions.
   */
<% } -%>
  describe('map dispatch to props', () => {
    it('should dispatch quack', () => {
      expect(typeof mapDispatchToProps().quack).toBe('function')
    })
  })
})
