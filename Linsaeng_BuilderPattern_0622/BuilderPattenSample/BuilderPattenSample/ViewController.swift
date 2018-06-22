//
//  ViewController.swift
//  BuilderPattenSample
//
//  Created by Jung seoung Yeo on 2018. 6. 22..
//  Copyright © 2018년 LinSaeng. All rights reserved.
//

import UIKit

// 추상화
protocol Builder {
    var label: UILabel { get }
    func instance() -> Builder
    func setText(with text: String) -> Builder
    func setTextColor(with color: UIColor) -> Builder
    func setFontSize(with fontSize: CGFloat) -> Builder
    
}

// 생성 역할
class Director {
    func createLabel(builders: Builder) -> UILabel {
        let builder = builders.instance()
            .setText(with: "label_2")
            .setFontSize(with: 30)
            .setTextColor(with: .black)
        return builder.label
    }
}

// 구체적인 생성 조건
class ConCreateBuiler: Builder {
    var label: UILabel = UILabel()
    
    func instance() -> Builder {
        label = UILabel()
        return self
    }
    
    func setText(with text: String) -> Builder {
        self.label.text = text
        return self
    }
    
    func setTextColor(with color: UIColor) -> Builder {
        self.label.textColor = color
        return self
    }
    
    func setFontSize(with fontSize: CGFloat) -> Builder {
        self.label.font = .systemFont(ofSize: fontSize)
        return self
    }
}

class ViewController: UIViewController {

    // 처음 사용 했던 코드
    private let label_1: UILabel = {
        let label_1 = UILabel()
        label_1.text = "label_1"
        label_1.textColor = .black
        label_1.font = .systemFont(ofSize: 20)
        label_1.numberOfLines = 1
        return label_1
    }()
    
    // Director
    private let dirctor: Director = Director()
    
    // Builder
    private let conCreateBuilder: Builder = ConCreateBuiler()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makelabel()
    }
    
    func makelabel() {
        
        // 미적용
        label_1.frame = CGRect(x: 100, y: 100, width: 100, height: 100)
        view.addSubview(label_1)
        
        // director로 생성
        let label_2 = dirctor.createLabel(builders: conCreateBuilder)
        label_2.frame = CGRect(x: 100, y: 200, width: 100, height: 100)
        view.addSubview(label_2)
        
        // conCreate로만 생성
        let label_3 = conCreateBuilder.instance()
        .setTextColor(with: .black)
        .setFontSize(with: 40)
        .setText(with: "label_3")
        .label
        label_3.frame = CGRect(x: 100, y: 300, width: 200, height: 100)
        view.addSubview(label_3)
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

