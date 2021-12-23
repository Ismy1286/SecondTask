//
//  ViewController.swift
//  SecondTask
//
//  Created by user on 23.12.2021.
//

import UIKit
import SnapKit


class ViewController: UIViewController {

    private var textField = UITextField()
    private var button = UIButton()
    private var label = UILabel()
    
    var s = ""

    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField.placeholder = "Введите текст..."
        
        view.addSubview(textField)
        textField.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-120)
            make.width.equalToSuperview().offset(-100)
        }
        
        button.backgroundColor = .yellow
        button.setTitle("Print", for: .normal)
        button.setTitleColor(.black, for: .normal)
        button.addTarget(nil, action: #selector(clickButton(sender:)), for: .touchUpInside)
        
        view.addSubview(button)
        button.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.centerY.equalToSuperview().offset(-70)
            make.width.equalTo(100)
        }
        
        label.numberOfLines = 0
        label.lineBreakMode = .byCharWrapping
        
        view.addSubview(label)
        label.snp.makeConstraints { make in
            make.centerX.equalToSuperview()
            make.top.equalTo(button.snp.bottom).offset(20)
            make.width.equalToSuperview().offset(-100)
        }
    }
    @objc func clickButton(sender: UIButton) {
        
        s = String(textField.text ?? "")
        let b = s.replacingOccurrences(of: ", ", with: "\n", options: .literal, range: nil)
       
        label.text = b
    }
}
