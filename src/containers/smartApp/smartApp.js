import { connect } from 'react-redux'
import { duckOperations, duckSelectors } from '../../redux/duck'
import App from '../../components/app/app'

/**
 * Maps individual bits of state from redux to props that
 * our contained component can access.
 *
 * @param {Object} state `connect` supplies us with the entire state object
 * @param {Object} ownProps
 */
const mapStateToProps = (state, ownProps) => ({
  distance: state.duck.distance,
  isTooFar: duckSelectors.checkIfDuckIsInRange(state)
})

/**
 * Maps redux action dispatches to props that our contained component
 * can use.
 *
 * @param {any} dispatch `connect` supplies us with dispatch so we can call redux actions
 * @param {Object} ownProps
 */
const mapDispatchToProps = (dispatch, ownProps) => ({
  quack: () => {
    dispatch(duckOperations.simpleQuack())
  }
})

export {
  mapStateToProps,
  mapDispatchToProps
}

export default connect(mapStateToProps, mapDispatchToProps)(App)
