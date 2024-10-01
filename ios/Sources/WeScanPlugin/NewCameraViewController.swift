//
//  NewCameraViewController.swift
//  WeScanSampleProject
//
//  Created by Chawatvish Worrapoj on 7/1/2020
//  Copyright © 2020 WeTransfer. All rights reserved.
//

import UIKit

final class NewCameraViewController: UIViewController {

    var cameraView: UIView! = UIView()
    var controller: CameraScannerViewController! = CameraScannerViewController()

    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
    }

    private func setupView() {
        cameraView.addSubview(controller.view)
        self.addChild(controller)
        controller.delegate = self
    }
}

extension NewCameraViewController: CameraScannerViewOutputDelegate {
    func captureImageFailWithError(error: Error) {
        print(error)
    }

    func captureImageSuccess(image: UIImage, withQuad quad: Quadrilateral?) {
        print("Success!")
    }
}
