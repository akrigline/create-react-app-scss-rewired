import React from 'react'
import ReactDOM from 'react-dom'
import { Provider as ReduxProvider } from 'react-redux'
import './style/index.scss'
import App from './components/app/app'
import createStore from './redux/store'
import registerServiceWorker from './registerServiceWorker'

const store = createStore()

ReactDOM.render(
  <ReduxProvider store={store}>
    <App />
  </ReduxProvider>,
  document.getElementById('root')
)

registerServiceWorker()
