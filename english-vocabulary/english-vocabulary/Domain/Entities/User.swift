//
//  User.swift
//  english-vocabulary
//
//  Created by 오영석 on 2/23/25.
//

import Foundation

struct UserEntity: Identifiable {
    let id: Int
    let userName: String
    let userPhone: String
    let userAge: Int
    let userEmail: String
    let signWay: SignWay
    let createdAt: Date
    let updatedAt: Date?
    
}

extension UserEntity {
    static func from(dto: UserResponseDTO) -> UserEntity {
        UserEntity(
            id: dto.id,
            userName: dto.userName,
            userPhone: dto.userPhone,
            userAge: Int(dto.userAge) ?? -0,
            userEmail: dto.userEmail,
            signWay: SignWay(rawValue: dto.signWay) ?? .kakao,
            createdAt: Date.fromISO8601(dto.createdAt) ?? Date(),
            updatedAt: dto.updatedAt.flatMap { Date.fromISO8601($0) }
        )
    }
}
