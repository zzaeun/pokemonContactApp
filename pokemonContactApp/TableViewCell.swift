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
    let profileImage = UIImageView()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        configureUI()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configureUI() {
        profileImage.layer.cornerRadius = 30
        profileImage.layer.borderColor = UIColor.gray.cgColor
        profileImage.layer.borderWidth = 1
        
        
        name.text = "name"
        name.textColor = .black
        
        phoneNumber.text = "010-0000-0000"
        phoneNumber.textColor = .black
        
        [profileImage, name, phoneNumber].forEach {
            contentView.addSubview($0)
        }
    }
    
    private func setConstraints() {
        
        profileImage.snp.makeConstraints {
            $0.width.height.equalTo(60)
            $0.leading.equalTo(30)
            $0.centerY.equalToSuperview()
        }
        
        name.snp.makeConstraints {
            $0.leading.equalTo(profileImage.snp.trailing).offset(16)
            $0.centerY.equalToSuperview()
        }
        
        phoneNumber.snp.makeConstraints {
            $0.trailing.equalTo(-30)
            $0.centerY.equalToSuperview()
        }
    }
}
