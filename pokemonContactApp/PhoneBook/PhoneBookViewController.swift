//
//  PhoneBookViewController.swift
//  pokemonContactApp
//
//  Created by 이정은 on 9/29/25.
//

import UIKit
import SnapKit

class PhoneBookViewController: UIViewController {
    
    private let imageView = UIImageView()
    private let randomButton = UIButton()
    private let nameTextField = UITextField()
    private let phoneTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "연락처 추가"
        
        configureUI()
        setConstraints()
    }
    
    func configureUI() {
        imageView.layer.cornerRadius = 30
        imageView.layer.borderColor = UIColor.systemGray4.cgColor
        imageView.layer.borderWidth = 1.5
        
        randomButton.setTitle("랜덤 이미지 생성", for: .normal)
        randomButton.tintColor = .systemGray5
        
        nameTextField.borderStyle = .roundedRect
        nameTextField.text = "name"
        
        phoneTextField.borderStyle = .roundedRect
        phoneTextField.text = "phoneNumber"
        
        [imageView, randomButton, nameTextField, phoneTextField].forEach {
            view.addSubview($0)
        }
    }
    
    func setConstraints() {
        
        imageView.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(100)
            $0.width.height.equalTo(100)
        }
        
        nameTextField.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(imageView.snp.bottom).offset(30)
            $0.width.equalTo(300)
            $0.height.equalTo(40)
        }
        
        phoneTextField.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(nameTextField.snp.bottom).offset(30)
            $0.width.equalTo(300)
            $0.height.equalTo(40)
        }
        
    }
}
