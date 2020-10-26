//
//  File.swift
//  swift_TLShadow
//
//  Created by 唐磊 on 2020/10/26.
//  Copyright © 2020 TL. All rights reserved.
//

import UIKit

class TLButton: UIButton {
    
    
    open override var isHighlighted: Bool{
        get{
            return super.isHighlighted
        }
        set{
            if newValue == true {
                self.startAnimate()
            }else {
                self.stopAnimate()
            }
        }
    }
    
    open override var isSelected: Bool{
        get{
            return super.isSelected
        }
        set{
            if newValue == true {
                self.startAnimate()
            }else {
                self.stopAnimate()
            }
        }
    }
}
