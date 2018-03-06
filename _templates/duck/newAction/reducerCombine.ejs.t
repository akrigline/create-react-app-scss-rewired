---
inject: true
to: src/redux/<%= h.inflection.camelize(duck, true) %>/reducers.js
after: const reducer = combineReducers\({
skip_if: <%= h.inflection.camelize(name, true) %>Reducer,
---
  <%= h.inflection.camelize(name, true) %>: <%= h.inflection.camelize(name, true) %>Reducer,