import Foundation
import Capacitor

@objc public class WeScan: NSObject {
    var parentView: UIView
    var call: CAPPluginCall

    var newCameraViewController = NewCameraViewController()

    init(parentView: UIView, call: CAPPluginCall) {
        self.parentView = parentView
        self.call = call
    }

    public func presentScanner() {
        print("In present scanner")

        newCameraViewController.view.frame = parentView.frame
        newCameraViewController.cameraView.frame = parentView.frame
        newCameraViewController.view.backgroundColor = .blue
        
        // detectViewController.call = call
        // detectViewController.onComplete = onDetectComplete
        // detectViewController.onCancel = onDetectCancel
        // detectViewController.view = cameraView
        
        parentView.addSubview(newCameraViewController.view)
    }
}
