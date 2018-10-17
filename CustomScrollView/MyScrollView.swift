//
//  MyScrollView.swift
//  CustomScrollView
//
//  Created by Olive Union on 17/10/2018.
//  Copyright © 2018 Razeware. All rights reserved.
//

import UIKit

class MyScrollView: UIView {

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        let panGesture = UIPanGestureRecognizer(target: self, action: #selector(panView(with: )))
        addGestureRecognizer(panGesture)
    }
    
    @objc func panView(with gestureRecognizer: UIPanGestureRecognizer) {
        let translation = gestureRecognizer.translation(in: self)
        UIView.animate(withDuration: 0.2) {
            self.bounds.origin.y = self.bounds.origin.y - translation.y
        }
        gestureRecognizer.setTranslation(CGPoint.zero, in: self)
    }

}
