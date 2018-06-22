//
//  MainView.swift
//  SnapkitSample
//
//  Created by Jung seoung Yeo on 2018. 5. 19..
//  Copyright © 2018년 Jung seoung Yeo. All rights reserved.
//

import Then

class MainView: BaseView {
    
    let logo = UIImageView().then {
        $0.image = UIImage(named: "linsaeng")
        $0.contentMode = .scaleAspectFit
        $0.backgroundColor = .clear
    }
    
    let mainTilte = UILabel().then {
        $0.textAlignment = .center
        $0.numberOfLines = 0
        $0.font = .systemFont(ofSize: 26, weight: .medium)
        $0.text = """
        CodeSuard
        CodeReview
        """
    }
    
    override func setupView() {
        super.setupView()
        
        addsubviews(logo, mainTilte)
        
        logo.snp.makeConstraints{ make -> Void in
            make.size.equalTo(240)
            make.top.equalTo(safeAreaInsets).offset(95)
            make.centerX.equalTo(self)
        }
        
        mainTilte.snp.makeConstraints{ make -> Void in
            make.top.equalTo(logo.snp.bottom).offset(14)
            make.centerX.equalTo(self)
        }
    }
    
}
