import Foundation
import Capacitor

/**
 * Please read the Capacitor iOS Plugin Development Guide
 * here: https://capacitorjs.com/docs/plugins/ios
 */
@objc(WeScanPlugin)
public class WeScanPlugin: CAPPlugin, CAPBridgedPlugin {
    public let identifier = "WeScanPlugin"
    public let jsName = "WeScan"
    public let pluginMethods: [CAPPluginMethod] = [
        CAPPluginMethod(name: "scanDocument", returnType: CAPPluginReturnPromise)
    ]
    private let implementation = WeScan()

    @objc func scanDocument(_ call: CAPPluginCall) {
        call.resolve([
            "value": implementation.echo("Test Echo")
        ])
    }
}
