//
//  TokenData.swift
//  Oauth_alamofire_tutorial
//
//  Created by Jeff Jeong on 2021/10/30.
//

import Foundation
//"token": {
//        "token_type": "Bearer",
//        "expires_in": 30,
//        "access_token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiJ9",
//        "refresh_token": "def5020077bd8b8b4ea3a4fa3d85480afd2bdfafefe85bbf03d8598994bcd48f20120d1f3f5f61538c3a4fe22"
//    }

// MARK: - TokenData
struct TokenData: Codable {
    let tokenType: String = ""
    let expiresIn: Int = 0
    let accessToken, refreshToken: String

    enum CodingKeys: String, CodingKey {
        case tokenType = "token_type"
        case expiresIn = "expires_in"
        case accessToken = "access_token"
        case refreshToken = "refresh_token"
    }
}
