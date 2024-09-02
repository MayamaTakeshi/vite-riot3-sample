import riot from 'riot';

import './tags/app.tag';
import './tags/child.tag';

// Mounts the <app> tag to the #app element
const tags = riot.mount('app');
console.log('mounted tags:', tags)
