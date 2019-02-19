//
//  Helpers.swift
//  GPVideoPlayer
//
//  Created by Payal Gupta on 18/02/19.
//  Copyright © 2019 Payal Gupta. All rights reserved.
//

import UIKit

extension UIView
{
    /// This method return the parent UIViewController of a UIView
    ///
    /// - Returns: parent controller of UIView (i.e. self)
    func parentViewController() -> UIViewController? {
        return self.traverseResponderChainForUIViewController() as? UIViewController
    }
    
    private func traverseResponderChainForUIViewController() -> AnyObject? {
        if let nextResponder = self.next {
            if nextResponder is UIViewController {
                return nextResponder
            } else if nextResponder is UIView {
                return (nextResponder as! UIView).traverseResponderChainForUIViewController()
            } else {
                return nil
            }
        }
        return nil
    }
}

class LoaderView: UIImageView {
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let rotationAnimation = CABasicAnimation(keyPath: "transform.rotation.z")
        rotationAnimation.toValue = .pi * 2.0 * 2 * 60.0
        rotationAnimation.duration = 200.0
        rotationAnimation.isCumulative = true
        rotationAnimation.repeatCount = Float.infinity
        self.layer.add(rotationAnimation, forKey: "rotationAnimation")
    }
}
