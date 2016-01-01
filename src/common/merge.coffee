Support = require("./support")

module.exports = (a, b, rules) ->
  obj = Object.clone(a)
  Object.keys(rules).each (propName) ->
    result = rules[propName](a[propName], b[propName])
    obj[propName] = result
  obj

module.exports.fn =
  mergeUniqueValues: (a, b) => Support.wrapArray(a).concat(b).unique()
  replaceIfSourceIsEmpty: (a, b) -> if Support.isEmpty(a) then b else a
  replaceUnlessTargetIsEmpty: (a, b) -> if Support.isEmpty(b) then a else b
