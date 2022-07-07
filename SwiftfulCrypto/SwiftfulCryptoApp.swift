//
//  SwiftfulCryptoApp.swift
//  SwiftfulCrypto
//
//  Created by COBY_PRO on 2022/07/06.
//

import SwiftUI

@main
struct SwiftfulCryptoApp: App {
    
    @StateObject private var vm = HomeViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                HomeView()
                    .navigationBarHidden(true)
            }
            .environmentObject(vm)
        }
    }
}
