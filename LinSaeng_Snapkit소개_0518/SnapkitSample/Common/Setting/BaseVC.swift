//
//  BaseVC.swift
//  SnapkitSample
//
//  Created by Jung seoung Yeo on 2018. 5. 19..
//  Copyright © 2018년 Jung seoung Yeo. All rights reserved.
//

import UIKit

class BaseVC : UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        settingView()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    func settingView() {
        self.view.backgroundColor = .white
    }
}
