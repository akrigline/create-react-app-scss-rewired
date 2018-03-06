---
inject: true
to: src/redux/<%= h.inflection.camelize(duck, true) %>/actions.js
before: export {
skip_if: const <%= h.inflection.camelize(name, true) %> = 
---
const <%= h.inflection.camelize(name, true) %> = (payload) => ({
  type: types.<%= h.inflection.underscore(name, true) %>,
  payload: payload
})