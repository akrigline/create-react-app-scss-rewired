---
inject: true
to: src/redux/<%= h.inflection.camelize(duck, true) %>/reducers.js
before: const reducer = combineReducers\({
skip_if: const <%= h.inflection.camelize(name, true) %>Reducer =
---
const <%= h.inflection.camelize(name, true) %>Reducer = (state = false, action) => {
  switch (action.type) {
    case types.<%= h.inflection.underscore(name, true) %>:
      // Logic
      return true
    default:
      return state
  }
}
