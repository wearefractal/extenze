extend = require './extend'

include = (klass, mixin) ->
  return extend klass.prototype, mixin 


module.exports = include
