unmix = (obj, mixin) ->
  delete obj[name] for name, property of mixin
  return obj


module.exports = unmix
