//
//  ViewController.swift
//  FlutterNative
//
//  Created by liwei on 2022/7/3.
//

import UIKit
import Flutter

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setup()
        
    }
    
    private func setup(){
        let btn = UIButton(frame: CGRect(x: 50, y: 100, width: 40, height: 20))
        btn.setTitle("push", for: .normal)
        btn.setTitleColor(.red, for: .normal)
        view.addSubview(btn)
        btn.addTarget(self, action: #selector(pushFlutterVC), for: .touchUpInside)
    }
    
    @objc private func pushFlutterVC(){
        let vc = FlutterViewController()
        self.present(vc, animated: true) {
            
        }
    }
}

