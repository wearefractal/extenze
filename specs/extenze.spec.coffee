#>> Setup

should = require 'should'

#>> Given an instance of extenze

extenze = require '../extenze'

#>> Then

extenze.should.have.property 'extend'
extenze.should.have.property 'include'

#>> Given a some classes

class Awesome 
  foo: "foo"

class Irrelevant
  bar: "bar"
  bar2: "bar2"

#>> When we try to mixin the methods from one class into another

a = new Awesome()
a = extenze.extend a, new Irrelevant()

#>> Then the properties should be added

a.should.have.property "bar"
a.should.have.property "bar2"

