//
//  PhoneBookViewController.swift
//  pokemonContactApp
//
//  Created by 이정은 on 9/29/25.
//

import UIKit
import SnapKit

class PhoneBookViewController: UIViewController {
    
    let phoneBookProfileImage = UIImageView()
    private let randomButton = UIButton()
    private let nameTextField = UITextField()
    private let phoneTextField = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        title = "연락처 추가"
        
        configureUI()
        setConstraints()
        
        randomButton.addTarget(self, action: #selector(tappedRandomButton), for: .touchUpInside)
    }
    
    func configureUI() {
        phoneBookProfileImage.layer.cornerRadius = 80
        phoneBookProfileImage.layer.borderColor = UIColor.systemGray2.cgColor
        phoneBookProfileImage.layer.borderWidth = 2
        
        randomButton.setTitle("랜덤 이미지 생성", for: .normal)
        randomButton.setTitleColor(.gray, for: .normal)
        randomButton.titleLabel?.font = .systemFont(ofSize: 12)
        
        nameTextField.layer.cornerRadius = 10
        nameTextField.layer.borderColor = UIColor.systemGray4.cgColor
        nameTextField.layer.borderWidth = 1
        
        phoneTextField.layer.cornerRadius = 10
        phoneTextField.layer.borderColor = UIColor.systemGray4.cgColor
        phoneTextField.layer.borderWidth = 1
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "적용")
        
        [phoneBookProfileImage, randomButton, nameTextField, phoneTextField].forEach {
            view.addSubview($0)
        }
    }
    
    func setConstraints() {
        
        phoneBookProfileImage.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(120)
            $0.width.height.equalTo(160
            )
        }
        
        randomButton.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(phoneBookProfileImage.snp.bottom).offset(16)
        }
        
        nameTextField.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(randomButton.snp.bottom).offset(30)
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.height.equalTo(40)
        }
        
        phoneTextField.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(nameTextField.snp.bottom).offset(12)
            $0.leading.trailing.equalToSuperview().inset(16)
            $0.height.equalTo(40)
        }
        
    }
    
    // 랜덤 이미지 생성 버튼
    @objc func tappedRandomButton() {
        PokemonAPI()
    }
}

#Preview {
    PhoneBookViewController()
}
