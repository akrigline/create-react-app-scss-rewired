---
inject: true
to: src/redux/<%= h.inflection.camelize(duck, true) %>/operations.js
before: export {
skip_if: simple<%= h.inflection.camelize(name) %> =
---
const simple<%= h.inflection.camelize(name) %> = actions.<%= h.inflection.camelize(name, true) %>