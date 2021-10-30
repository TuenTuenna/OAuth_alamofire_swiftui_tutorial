//
//  Oauth_alamofire_tutorialApp.swift
//  Oauth_alamofire_tutorial
//
//  Created by Jeff Jeong on 2021/10/30.
//

import SwiftUI

@main
struct Oauth_alamofire_tutorialApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(UserVM())
        }
    }
}
