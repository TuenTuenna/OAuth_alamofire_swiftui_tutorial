//
//  TokenResponse.swift
//  Oauth_alamofire_tutorial
//
//  Created by Jeff Jeong on 2021/10/30.
//

import Foundation
// MARK: - TokenResponse
struct TokenResponse: Codable {
    let message: String
    let token: TokenData
}
