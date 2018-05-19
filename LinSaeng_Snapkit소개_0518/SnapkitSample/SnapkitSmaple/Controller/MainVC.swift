//
//  MainVC.swift
//  SnapkitSample
//
//  Created by Jung seoung Yeo on 2018. 5. 19..
//  Copyright © 2018년 Jung seoung Yeo. All rights reserved.
//

import UIKit

class MainVC : BaseVC {
    
    let mainView = MainView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func settingView() {
        super.settingView()
        view = mainView
    }
    
}
