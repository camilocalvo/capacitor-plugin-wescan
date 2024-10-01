import { registerPlugin } from '@capacitor/core';

import type { WeScanPlugin } from './definitions';

const WeScan = registerPlugin<WeScanPlugin>('WeScan', {
  web: () => import('./web').then(m => new m.WeScanWeb()),
});

export * from './definitions';
export { WeScan };
