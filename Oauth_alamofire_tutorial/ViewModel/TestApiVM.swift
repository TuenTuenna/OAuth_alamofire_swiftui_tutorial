//
//  TestApiVM.swift
//  Oauth_alamofire_tutorial
//
//  Created by Jeff Jeong on 2021/12/01.
//

import Foundation
import Alamofire
import Combine

class TestApiVM: ObservableObject {
    
    //MARK: properties
    var subscription = Set<AnyCancellable>()
    
    var timeoutEvent = PassthroughSubject<(),Never>()
    
    init(){
        print("TestApiVM - init() called")
        listenRequestTimeoutError()
    }
    
    // 리퀘스트 타임아웃 테스트
    func requestTimeoutTest(){
        print("TestApiVM - requestTimeoutTest() called")
        TestApiService.requestTimeoutTest()
            .sink { (completion: Subscribers.Completion<AFError>) in
                print("TestApiVM fetchUsers completion: \(completion)")
            } receiveValue: { (receivedValue: ()) in
                print("TestApiVM receivedValue :", receivedValue)
            }.store(in: &subscription)
    }
    
}

//MARK: - Notification 관련
extension TestApiVM {
    
    /// 리퀘스트 타임아웃 노티 등록
    func listenRequestTimeoutError(){
        print("TestApiVM - listenRequestTimeoutError")
        
        NotificationCenter.Publisher(center: .default, name: .requestTimeout, object: nil)
            .sink { _ in
                print("타임아웃 스트림 종료")
            } receiveValue: { _ in
                print("타임아웃 이벤트 발생됨")
                DispatchQueue.main.async {
                    self.timeoutEvent.send()
                }
            }.store(in: &subscription)
    }
    
}

