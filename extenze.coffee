extend  = require './services/extend'
include = require './services/include'

extenze = ->

  extend: (obj, mixin) -> extend obj, mixin
  include: (klass, mixin) -> include klass, mixin


module.exports = extenze()  

