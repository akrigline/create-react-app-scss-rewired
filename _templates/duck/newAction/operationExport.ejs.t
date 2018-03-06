---
inject: true
to: src/redux/<%= h.inflection.camelize(duck, true) %>/operations.js
after: export
skip_if: simple<%= h.inflection.camelize(name) %>,
---
  simple<%= h.inflection.camelize(name) %>,