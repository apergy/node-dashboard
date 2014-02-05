observify = require '../src/observify'

describe 'Observify', () ->
  it 'should be an function', () ->
    expect(typeof observify).toBe 'function'

  it 'should return an object', () ->
    expect(typeof observify()).toBe 'object'

  it 'should have a schedule method', () ->
    expect(typeof observify().schedule).toBe 'function'

