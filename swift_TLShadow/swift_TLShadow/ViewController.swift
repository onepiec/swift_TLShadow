//
//  ViewController.swift
//  swift_TLShadow
//
//  Created by TL on 2020/8/18.
//  Copyright © 2020 TL. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        self.view.backgroundColor = UIColor.init(red: 216/255.0, green: 226/255.0, blue: 237/255.0, alpha: 1)
        
        
        let tapView = UILabel()
        tapView.frame = CGRect.init(x: 50, y: 100, width: 100, height: 100)
        tapView.backgroundColor = UIColor.init(red: 229/255.0, green: 237/255.0, blue: 246/255.0, alpha: 1)
        tapView.layer.cornerRadius = 50
        tapView.text = "123"
        tapView.textAlignment = .center
        self.view.addSubview(tapView)
        TLShadow.tl_initShadow(view: tapView, outDirection: .rightTopDirection, inDirection: .leftTopDirection)
        

        let btn = TLButton.init(type: .custom)
        btn.frame = CGRect.init(x: 50, y: 250, width: 100, height: 100)
        btn.backgroundColor = UIColor.init(red: 229/255.0, green: 237/255.0, blue: 246/255.0, alpha: 1)
        btn.layer.cornerRadius = 30
        btn.setTitle("123", for: .normal)
        btn.titleLabel?.textAlignment = .center
        btn.setTitleColor(UIColor.black, for: .normal)
        self.view.addSubview(btn)
        TLShadow.tl_initShadow(view: btn, outDirection: .rightTopDirection, inDirection: .leftTopDirection)
        
        let tap = UITapGestureRecognizer.init(target: self, action: #selector(click0))
        tapView.addGestureRecognizer(tap)
        tapView.isUserInteractionEnabled = true
        
        btn.addTarget(self, action: #selector(click1(btn:)), for: .touchUpInside)
//        btn.isSelected = true
    }


    @objc func click0() {
        print("***click0***")
    }
    @objc func click1(btn:TLButton) {

        print("***click1***")
    }
}

