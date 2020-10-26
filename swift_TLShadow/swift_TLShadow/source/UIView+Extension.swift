//
//  File.swift
//  swift_TLShadow
//
//  Created by 唐磊 on 2020/10/26.
//  Copyright © 2020 TL. All rights reserved.
//

import UIKit

private var shadowOutLayerKey0:String = "shadowOutLayerKey0"
private var shadowOutLayerKey1:String = "shadowOutLayerKey1"
private var shadowInLayerKey0:String = "shadowInLayerKey0"
private var shadowInLayerKey1:String = "shadowInLayerKey1"

extension UIView {
    
    var shadowOutLayer0:CALayer?{
        get{
            return (objc_getAssociatedObject(self, &shadowOutLayerKey0) as? CALayer)
        }
        set (newValue) {
            objc_setAssociatedObject(self, &shadowOutLayerKey0, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
        }
    }
    var shadowOutLayer1:CALayer?{
        get{
            return (objc_getAssociatedObject(self, &shadowOutLayerKey1) as? CALayer)
        }
        set (newValue) {
            objc_setAssociatedObject(self, &shadowOutLayerKey1, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
        }
    }
    
    var shadowInLayer0:CAShapeLayer?{
        get{
            return (objc_getAssociatedObject(self, &shadowInLayerKey0) as? CAShapeLayer)
        }
        set (newValue) {
            objc_setAssociatedObject(self, &shadowInLayerKey0, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
        }
    }
    var shadowInLayer1:CAShapeLayer?{
        get{
            return (objc_getAssociatedObject(self, &shadowInLayerKey1) as? CAShapeLayer)
        }
        set (newValue) {
            objc_setAssociatedObject(self, &shadowInLayerKey1, newValue, objc_AssociationPolicy.OBJC_ASSOCIATION_RETAIN)
        }
    }

    
    open override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.startAnimate()
    }
    open override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.stopAnimate()
    }
    open override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        self.stopAnimate()
    }
    
    func startAnimate() {
        
        UIView.animate(withDuration: 0.3) {
            self.shadowOutLayer0?.opacity = 0
            self.shadowOutLayer1?.opacity = 0

            self.shadowInLayer0?.opacity = 1
            self.shadowInLayer1?.opacity = 1
        }
    }
    func stopAnimate() {
        
        UIView.animate(withDuration: 0.3) {
            self.shadowOutLayer0?.opacity = 1
            self.shadowOutLayer1?.opacity = 1

            self.shadowInLayer0?.opacity = 0
            self.shadowInLayer1?.opacity = 0
        }
    }
}
