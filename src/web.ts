import { WebPlugin } from '@capacitor/core';

import type { WeScanPlugin } from './definitions';

export class WeScanWeb extends WebPlugin implements WeScanPlugin {
  async echo(options: { value: string }): Promise<{ value: string }> {
    console.log('ECHO', options);
    return options;
  }
}
