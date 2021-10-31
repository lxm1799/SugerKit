//
//  ViewController.swift
//  SugerKit
//
//  Created by luckyBoy on 10/31/2021.
//  Copyright (c) 2021 luckyBoy. All rights reserved.
//

import UIKit
import SugerKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        view.addSubview(testView)
        view.addSubview(testLab)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    lazy var testView: UIView = {
        let view = UIView.init()
            .set(frame: .init(x: 100, y: 100, width: 100, height: 100))
            .set(backgroundColor: .red)
            .set(clipsToBounds: true)
            .set(layerCornerRadius: 50)
        return view
    }()
    
    lazy var testLab: UILabel = {
        let view = UILabel.init()
            .set(frame: .init(x: 100, y: testView.maxY + 10, width: 100, height: 30))
            .set(backgroundColor: .orange)
            .set(textColor: .black)
            .set(font: .medium(21))
            .set(text: "测试yyyy")
            .set(textAlignment: .center)
        return view
    }()
}

