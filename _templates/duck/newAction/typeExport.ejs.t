---
inject: true
to: src/redux/<%= h.inflection.camelize(duck, true) %>/types.js
after: export
skip_if: <%= h.inflection.underscore(name, true) %>,
---
  <%= h.inflection.underscore(name, true) %>,