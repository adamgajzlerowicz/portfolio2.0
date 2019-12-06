import * as sapper from '@sapper/app';
import { APP_CONTAINER_ID } from './constants/common'

sapper.start({
  target: document.querySelector(`#${APP_CONTAINER_ID}`)
});
