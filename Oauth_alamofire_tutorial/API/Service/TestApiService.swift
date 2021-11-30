//
//  TestApiService.swift
//  Oauth_alamofire_tutorial
//
//  Created by Jeff Jeong on 2021/12/01.
//

import Foundation
import Alamofire
import Combine

// 테스트 API 호출
enum TestApiService {
    
    // 리퀘스트 타임아웃테스트
    static func requestTimeoutTest() -> AnyPublisher<(), AFError>{
        print("AuthApiService - requestTimeoutTest() called")
        
        return ApiClient.shared.session
            .request(TestApiRouter.requestTimeout)
            .publishDecodable(type: UserInfoResponse.self)
            .value()
            .map{ receivedValue in
                return ()
            }.eraseToAnyPublisher()
    }
    
}
