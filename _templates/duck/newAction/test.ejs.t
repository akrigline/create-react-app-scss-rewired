---
inject: true
to: src/redux/<%= h.inflection.camelize(duck, true) %>/<%= h.inflection.camelize(duck, true) %>.test.js
after: describe\('<%= h.inflection.humanize(duck) %> Reducer'
skip_if: describe\('<%= h.inflection.camelize(name, true) %>'
message: |
  {red Be sure to change the added test to reflect the entire state object or it will fail.}
---
  describe('<%= h.inflection.camelize(name, true) %>', () => {
    const <%= h.inflection.camelize(name, true) %> = actions.<%= h.inflection.camelize(name, true) %>()
    const initialState = {
      <%= h.inflection.camelize(name, true) %>: false
    }

    const result = reducer(initialState, <%= h.inflection.camelize(name, true) %>)

    it('should <%= h.inflection.camelize(name, true) %>', () => {
      expect(result).toEqual({
        <%= h.inflection.camelize(name, true) %>: true
      })
    })
  })