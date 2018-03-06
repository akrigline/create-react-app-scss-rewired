---
inject: true
to: src/redux/<%= h.inflection.camelize(duck, true) %>/types.js
before: export {
skip_if: const <%= h.inflection.underscore(name, true) %> =
---
const <%= h.inflection.underscore(name, true) %> = 'exampleApp/<%= h.inflection.camelize(duck, true) %>/<%= h.inflection.underscore(name, true) %>'