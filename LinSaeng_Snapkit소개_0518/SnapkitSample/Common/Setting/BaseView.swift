//
//  BaseView+.swift
//  SnapkitSample
//
//  Created by Jung seoung Yeo on 2018. 5. 19..
//  Copyright © 2018년 Jung seoung Yeo. All rights reserved.
//

import UIKit
import SnapKit

class BaseView: UIView {
    
    func setupView() {
        backgroundColor = .white
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

