#>> Setup

should = require 'should'
include = require '../include'

#>> Given a class

class Awesome 
  foo: -> console.log "foo"

#>> When we try to add a property dynamically

Awesome = include Awesome, {isCool: true}

#>> Then

Awesome.isCool.should.be.true

