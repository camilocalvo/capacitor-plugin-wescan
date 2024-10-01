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
    
    private var implementation: WeScan? = nil

    @objc func scanDocument(_ call: CAPPluginCall) {
        DispatchQueue.main.async { [weak self] in
            guard let strongSelf = self else {
                return
            }
            
            if let view = strongSelf.bridge?.viewController?.view {
                strongSelf.implementation = WeScan(parentView: view, call: call)
                strongSelf.implementation?.presentScanner()
            }
        }
    }
}
