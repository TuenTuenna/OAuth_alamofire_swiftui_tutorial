//
//  ApiLogger.swift
//  Oauth_alamofire_tutorial
//
//  Created by Jeff Jeong on 2021/10/30.
//

import Foundation
import Alamofire

final class ApiLogger: EventMonitor {
    let queue = DispatchQueue(label: "Oauth_alamofire_tutorial_ApiLogger")
    
    // Event called when any type of Request is resumed.
    func requestDidResume(_ request: Request) {
        print("ApiLogger - Resuming: \(request)")
    }
    
    // Event called whenever a DataRequest has parsed a response.
    func request<Value>(_ request: DataRequest, didParseResponse response: DataResponse<Value, AFError>) {
        print("ApiLogger - request() called")
        
        if let error = response.error {
            switch error {
            case let .sessionTaskFailed(error):
                print("ApiLogger 에러 - error: ", error)
                if error._code == NSURLErrorTimedOut {
                    print("[API 타임아웃] Time out occurs!!!!!")
                    NotificationCenter.default.post(name: .requestTimeout, object: nil)
                }
            default:
                print("default")
            }
        }
        
        
        debugPrint("ApiLogger - Finished: \(response)")
    }
}
