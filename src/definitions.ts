export interface WeScanPlugin {
  echo(options: { value: string }): Promise<{ value: string }>;
}
