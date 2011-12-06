extend = (obj, mixin) ->
  obj[name] = method for name, method of mixin        
  return obj


module.exports = extend
