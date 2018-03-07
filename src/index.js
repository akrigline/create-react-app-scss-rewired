import React from 'react'
import ReactDOM from 'react-dom'
import { Provider } from 'react-redux'
import { init } from '@rematch/core'
import './style/index.scss'
import App from './components/app/app'
import * as rematchModels from './rematch'
import registerServiceWorker from './registerServiceWorker'

const store = init({
  models: rematchModels
})

ReactDOM.render(
  <Provider store={store}>
    <App />
  </Provider>,
  document.getElementById('root'))
registerServiceWorker()
