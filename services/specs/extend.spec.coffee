#>> Setup

should = require 'should'
extend = require '../extend'

#>> Given a some classes

class Awesome 
  foo: "foo"

class Irrelevant
  bar: "bar"
  bar2: "bar2"

#>> When we try to mixin the methods from one class into another

a = new Awesome()
a = extend a, new Irrelevant()

#>> Then the properties should be added

a.should.have.property "bar"
a.should.have.property "bar2"

