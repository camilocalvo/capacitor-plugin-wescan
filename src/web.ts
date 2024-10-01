import { WebPlugin } from '@capacitor/core';

import type { WeScanPlugin } from './definitions';

export class WeScanWeb extends WebPlugin implements WeScanPlugin {
  async scanDocument(): Promise<{ scannedImages: string[] }> {
    throw new Error('Method not implemented.');
  }
}
