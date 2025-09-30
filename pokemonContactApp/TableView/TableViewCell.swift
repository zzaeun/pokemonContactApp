//
//  tableViewCell.swift
//  pokemonContactApp
//
//  Created by 이정은 on 9/26/25.
//
//
import UIKit
import SnapKit

class TableViewCell: UITableViewCell {
    
    static let identifier = "tableViewCell"
    
    let name = UILabel()
    let phoneNumber = UILabel()
    let mainProfileImage = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureUI()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureUI() {

        mainProfileImage.layer.cornerRadius = 30
        mainProfileImage.layer.borderColor = UIColor.systemGray2.cgColor
        mainProfileImage.layer.borderWidth = 2
        
        name.textColor = .black
        name.font = .systemFont(ofSize: 16)
        
        phoneNumber.textColor = .black
        phoneNumber.font = .systemFont(ofSize: 16)
        
        [mainProfileImage, name, phoneNumber].forEach {
            contentView.addSubview($0)
        }
    }
    
    private func setConstraints() {
        
        mainProfileImage.snp.makeConstraints {
            $0.width.height.equalTo(60)
            $0.leading.equalTo(30)
            $0.centerY.equalToSuperview()
        }
        
        name.snp.makeConstraints {
            $0.leading.equalTo(mainProfileImage.snp.trailing).offset(16)
            $0.centerY.equalToSuperview()
        }
        
        phoneNumber.snp.makeConstraints {
            $0.trailing.equalTo(-30)
            $0.centerY.equalToSuperview()
        }
    }
    
    // cell에 데이터(ContactData) 채워주는 함수
    func configure(contact: ContactData) {
        name.text = contact.name
        phoneNumber.text = contact.phoneNumber
        if let data = contact.profileImageData, let img = UIImage(data: data) {
            mainProfileImage.image = img
        }
    }
}
