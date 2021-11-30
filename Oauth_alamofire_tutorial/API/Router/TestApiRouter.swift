//
//  TestApiRouter.swift
//  Oauth_alamofire_tutorial
//
//  Created by Jeff Jeong on 2021/12/01.
//

import Foundation
import Alamofire

// API 테스트 라우터
enum TestApiRouter: URLRequestConvertible {
    
    case requestTimeout
    
    var baseURL: URL {
        return URL(string: "https://dev-jeongdaeri-request-time.free.beeceptor.com")!
    }
    
    var endPoint: String {
        switch self {
        case .requestTimeout:
            return "/request-timeout"
        default:
            return ""
        }
    }
    
    var method: HTTPMethod {
        switch self {
        default: return .get
        }
    }
    
    var parameters: Parameters{
        switch self {
        default: return Parameters()
        }
    }
    
    func asURLRequest() throws -> URLRequest {
        let url = baseURL.appendingPathComponent(endPoint)
        
        var request = URLRequest(url: url)
        
        request.method = method
        
        return request
    }
    
    
}
