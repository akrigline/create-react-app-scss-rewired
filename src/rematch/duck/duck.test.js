import duck from './duck'

describe('duck', () => {
  const initialState = {
    quacking: false,
    distanceSwum: 0
  }
  it('does foo', () => {
    expect(duck.reducers.foo(initialState)).toEqual({
      quacking: false,
      distanceSwum: 0
    })
  })
  it('does bar', () => {
    expect(duck.reducers.bar(initialState)).toEqual({
      quacking: true,
      distanceSwum: 10
    })
  })
  it('does quacking', () => {
    expect(duck.reducers.quacking(initialState)).toEqual({
      quacking: false,
      distanceSwum: 0
    }) // This will fail on purpose to show that the name of the reducer doesn't have any correllation to the key being modified
  })
})
