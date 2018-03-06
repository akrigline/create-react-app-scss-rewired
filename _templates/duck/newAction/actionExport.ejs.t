---
inject: true
to: src/redux/<%= h.inflection.camelize(duck, true) %>/actions.js
after: export
skip_if: \s<%= h.inflection.camelize(name, true) %>,
---
  <%= h.inflection.camelize(name, true) %>,