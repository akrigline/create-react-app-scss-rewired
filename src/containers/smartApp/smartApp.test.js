import {mapStateToProps, mapDispatchToProps} from './smartApp'

describe('Smart App', () => {
  describe('map state to props', () => {
    const state = {
      duck: {
        distance: 50
      }
    }
    const ownProps = {}
    const mappedProps = mapStateToProps(state, ownProps)
    it('should map the distance prop', () => {
      expect(mappedProps.distance).toEqual(50)
    })
    it('should map the isTooFar prop', () => {
      expect(mappedProps.isTooFar).toEqual(false)
    })
  })

  describe('map dispatch to props', () => {
    it('should dispatch quack', () => {
      expect(typeof mapDispatchToProps().quack).toBe('function')
    })
  })
})