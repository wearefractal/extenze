require('coffee-script');
extend  = require './services/extend'
include = require './services/include'
unmix = require './services/unmix'

extenze = ->

  extend: (obj, mixin) -> extend obj, mixin
  include: (klass, mixin) -> include klass, mixin
  unmix: (obj, mixin) -> unmix obj, mixin


module.exports = extenze()  

