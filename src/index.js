import './css/main.css';
import { Elm } from './Main.elm';
import * as serviceWorker from './serviceWorker';

import slide01 from './img/slide01.jpg';
import slide02 from './img/slide02.jpg';
import slide03 from './img/slide03.jpg';
import slide04 from './img/slide04.jpg';
import slide05 from './img/slide05.jpg';
import pic01 from './img/pic01.jpg';
import pic02 from './img/pic02.jpg';
import pic03 from './img/pic03.jpg';
import pic04 from './img/pic04.jpg';
import bg from './img/bg.jpg';

Elm.Main.init({
  flags: generateFlags(),
  node: document.getElementById('root')
});

function generateFlags() {
  return {
    images: {
      slide01,
      slide02,
      slide03,
      slide04,
      slide05,
      pic01,
      pic02,
      pic03,
      pic04,
      bg,
    }
  };
}
// If you want your app to work offline and load faster, you can change
// unregister() to register() below. Note this comes with some pitfalls.
// Learn more about service workers: https://bit.ly/CRA-PWA
serviceWorker.unregister();
