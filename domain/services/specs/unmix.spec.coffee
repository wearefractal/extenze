#>> Setup

should = require 'should'
unmix = require '../unmix'

#>> Given some objects

foo =
  foo: 'foo'
  donot: 'want'
  o: 'rly'

un = 
  donot: 'want'
  o: 'rly'


#>> When we unmix

foo = unmix foo, un

#>> Then the properties should be added

console.log foo

foo.should.have.property "foo"
foo.should.not.have.property "donot"
foo.should.not.have.property "o"


