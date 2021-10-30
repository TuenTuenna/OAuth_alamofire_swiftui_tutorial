//
//  AuthResponse.swift
//  Oauth_alamofire_tutorial
//
//  Created by Jeff Jeong on 2021/10/30.
//

import Foundation

struct AuthResponse : Codable {
    var user: UserData
    var token: TokenData
    enum CodingKeys: String, CodingKey {
        case token
        case user
    }
}
