// Polyfill Promise for older browsers
import 'es6-promise/auto';
import * as React from 'react';
import * as ReactDOM from 'react-dom';
import RoundsViewer from 'components/rounds_viewer';

document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(<RoundsViewer />, document.getElementById('root'))
})
