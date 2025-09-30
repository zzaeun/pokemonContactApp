//
//  ContactData.swift
//  pokemonContactApp
//
//  Created by 이정은 on 9/30/25.
//

import UIKit

// 저장할 연락처 데이터들
struct ContactData: Codable {
    let name: String
    let phoneNumber: String
    let profileImageData: Data?
}
