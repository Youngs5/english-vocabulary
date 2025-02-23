//
//  UserResponseDto.dart.swift
//  english-vocabulary
//
//  Created by 오영석 on 2/23/25.
//

import Foundation

struct UserResponseDTO: Codable {
    let id: Int
    let userName: String
    let userPhone: String
    let userAge: String
    let userEmail: String
    let signWay: String
    let createdAt: String
    let updatedAt: String?
}
