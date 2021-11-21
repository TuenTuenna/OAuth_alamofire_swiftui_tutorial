//
//  View+Ext.swift
//  Oauth_alamofire_tutorial
//
//  Created by Jeff Jeong on 2021/11/21.
//

import Foundation
import SwiftUI

extension View {
    
    // 텍스트필드 커스텀 플레이스 홀더
    func placeholder<PlaceHolderText: View>(shouldShow: Bool,
                     alignment: Alignment = .leading,
                     @ViewBuilder placerholderText: () -> PlaceHolderText
    ) -> some View{
        ZStack(alignment: alignment){
            // 넣을려는 플레이스 홀더 즉 커스텀 텍스트
            placerholderText().opacity(shouldShow ? 1: 0)
            self
        }
    }
    
}
