//
//  UIView+.swift
//  SnapkitSample
//
//  Created by Jung seoung Yeo on 2018. 5. 19..
//  Copyright © 2018년 Jung seoung Yeo. All rights reserved.
//

import UIKit

extension UIView {
    func addsubviews(_ views: UIView...){
        for view in views {
            addSubview(view)
        }
    }
}
