//
//  UserListResponse.swift
//  Oauth_alamofire_tutorial
//
//  Created by Jeff Jeong on 2021/10/30.
//

import Foundation
// MARK: - UserListResponse
struct UserListResponse: Codable {
    let data: [UserData]
}
