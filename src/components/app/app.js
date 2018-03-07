import React, { Component } from 'react'
import { connect } from 'react-redux'
import Logo from '../../assets/icons/logo.svg'
import styles from './app.scss'

class App extends Component {
  render () {
    return (
      <div className={styles.app}>
        <header className={styles.appHeader}>
          <Logo className={styles.appLogo} />
          <h1 className={styles.appTitle}>Welcome to React</h1>
        </header>
        <p className={styles.appIntro}>
          To get started, edit <code>src/App.js</code> and save to reload.
        </p>
        {this.props.quacking ? 'Quacking' : 'Not Quacking'}
        <p>Distance Swum: {this.props.distanceSwum}</p>
        <button onClick={this.props.doFoo}>Foo</button>
        <button onClick={this.props.doBar}>Bar</button>
        <button onClick={this.props.doQuacking}>Quack</button>
      </div>
    )
  }
}

const mapStateToProps = (state, ownProps) => ({
  quacking: state.duck.quacking,
  distanceSwum: state.duck.distanceSwum
})

const mapDispatchToProps = dispatch => ({
  doFoo: dispatch.duck.foo, // payload => dispatch({type: 'duck/foo', payload: payload})
  doBar: dispatch.duck.bar, // payload => dispatch({type: 'duck/bar', payload: payload})
  doQuacking: dispatch.duck.quacking
})

export default connect(mapStateToProps, mapDispatchToProps)(App)
