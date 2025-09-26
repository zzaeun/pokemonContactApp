//
//  ViewController.swift
//  pokemonContactApp
//
//  Created by 이정은 on 9/26/25.
//

import UIKit
import SnapKit

class ViewController: UIViewController {

    let titleLabel = UILabel()
    let plutButton = UIButton()
    let contactTableVC = TableViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        addChildViewController()
        configureUI()
        setConstraints()
    }

    func configureUI() {
        titleLabel.text = "친구 목록"
        titleLabel.font = .systemFont(ofSize: 20, weight: .bold)
        titleLabel.textColor = .black
        
        plutButton.setTitle("추가", for: .normal)
        plutButton.setTitleColor(.gray, for: .normal)
        
        [titleLabel, plutButton].forEach {
            view.addSubview($0)
        }
    }
    
    func setConstraints() {
        titleLabel.snp.makeConstraints {
            $0.centerX.equalToSuperview()
            $0.top.equalTo(view.safeAreaLayoutGuide.snp.top).offset(20)
        }
        
        plutButton.snp.makeConstraints {
            $0.trailing.equalToSuperview().inset(20)
            $0.centerY.equalTo(titleLabel.snp.centerY)
        }
        
        contactTableVC.view.snp.makeConstraints {
            $0.top.equalTo(titleLabel.snp.bottom).offset(40)
            $0.leading.trailing.equalToSuperview()
            $0.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
        }
    
    }
    
    // 자식 뷰 컨트롤러를 활용해 TableViewController 추가
    func addChildViewController() {
        addChild(contactTableVC)
        view.addSubview(contactTableVC.view)
        contactTableVC.didMove(toParent: self)
    }

}

