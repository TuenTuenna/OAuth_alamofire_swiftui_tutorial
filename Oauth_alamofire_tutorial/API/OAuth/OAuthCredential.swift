//
//  OAuthCredential.swift
//  Oauth_alamofire_tutorial
//
//  Created by Jeff Jeong on 2021/10/30.
//

import Foundation
import Alamofire

struct OAuthCredential : AuthenticationCredential {
    
    let accessToken: String
    
    let refreshToken: String
    
    let expiration: Date
    
    var requiresRefresh: Bool { Date(timeIntervalSinceNow: 30) > expiration }
    
}
