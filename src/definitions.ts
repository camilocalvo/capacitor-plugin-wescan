export interface WeScanPlugin {
  scanDocument(): Promise<{ scannedImages: string[] }>;
}
