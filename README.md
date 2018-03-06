# Hygen
This configuration supports blueprinting with [hygen](http://www.hygen.io/quick-start).

## Generators
### Component generator
```
hygen component new --name <name>
```
Produces the following files:
```
└── components
    └── <name>
        ├── <name>.js
        ├── <name>.scss
        └── <name>.test.js
```

### Container generator
```
hygen container new --name <name> --document? --duck? <duck>
```
Produces the following files:
```
└── containers
    └── <name>
        ├── <name>.js
        └── <name>.test.js
```
Adding the optional `--document` flag will add some JSDoc comments to the container file itself and some comments to the test.
Adding the optional `--duck` flag will import the operations from that duck automatically.

### Duck Generator
```
hygen duck new --name <name> --dummy? --document?
```
Produces the following files:
```
└── redux
    └── <name>
        ├── actions.js
        ├── <name>.test.js
        ├── index.js
        ├── operations.js
        ├── reducers.js
        ├── selectors.js
        └── types.js
```
Adding the `--dummy` flag will fill in the files with a dummy duck's examples.
Adding the `--document` flag will add some documentation to each produced file detailing it's purpose.

```
hygen duck newAction --name <name> --duck <duck>
```
Injects all of the parts of a new Action, Reducer, Operation, and Type into the provided `--duck`.


# Redux
I've included a base implementation of redux with this setup. No middleware other than redux-devtools is set up.

All connected components are within `/src/containers` and they all connect components from `/src/components`. The reducers are set up with the format from [redux re-ducks](https://github.com/alexnm/re-ducks). I'm personally still on the fence about having so many files for the same functionality, but thanks to hygen, most of the overhead is taken care of when adding a new action/reducer.

# Create React App
This project was bootstrapped with [Create React App](https://github.com/facebookincubator/create-react-app).

# Rewired
In addition to the vanilla setup from `create-react-app` I've used [React App Rewired](https://github.com/timarney/react-app-rewired) to tweak 2 things:
- SCSS is now enabled in conjunction with CSS Modules.
- [SASS Resources Loader](https://github.com/shakacode/sass-resources-loader) is configured targetting the `/style/resources` directory. This is really just a QOL thing and can be removed pretty easily.
- [SVG React Loader](https://github.com/jhamlet/svg-react-loader) is enabled to allow treating svgs as components.

## How to use SCSS in this configuration
This particular setup is only for those seeking to use SCSS CSS Modules, it breaks pretty magnificently otherwise.
```scss
// components/app/app.scss
.someClass {
  foo: bar;
  div {
    bit: baz;
  }
}
```
```js
// components/app/app.js
import styles from './app.scss'

// ...

render () {
  return {
    <div className={styles.someClass}>
      <div>Some Div Content styled by the nested rule.</div>
    </div>
  }
}
```

## How to use SVGs in this configuration
I have set up [SVG React Loader](https://github.com/jhamlet/svg-react-loader) to wrap all imported SVGs as components. Once imported, you can simply use them as you would a component. These svgs are then inlined in the HTML, so you can use SCSS to style and manipulate them as necessary.
```js
// components/app/app.js
import SomeIcon from '../../assets/icons/someIcon.svg'

// ...
render () {
  return {
    <div>
      <SomeIcon />
    </div>
  }
}
```

Giving them a className is just the same as if they were divs
```scss
// components/app/app.scss
.svgClass {
  foo: bar;
}
```
```js
// components/app/app.js
import styles from './app.scss'
import SomeIcon from '../../assets/icons/someIcon.svg'

// ...

render () {
  return {
    <div>
      <SomeIcon className={styles.svgClass} />
    </div>
  }
}
```