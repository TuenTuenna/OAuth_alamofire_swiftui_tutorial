//
//  UserData.swift
//  Oauth_alamofire_tutorial
//
//  Created by Jeff Jeong on 2021/10/30.
//

import Foundation

//"user": {
//        "id": 3,
//        "name": "tester01",
//        "email": "tester01@email.com",
//        "avatar": "https://www.gravatar.com/avatar/b87c0cd09c8c06be1d50f18d2104c814.jpg?s=200&d=robohash"
//    }

// 서버에서 넘어온 사용자 데이터
struct UserData : Codable, Identifiable {
    var uuid: UUID = UUID()
    var id : Int
    var name: String
    var email: String
    var avatar: String
    private enum CodingKeys: String, CodingKey{
        case id
        case name
        case email
        case avatar
    }
}
