//
//  HomeViewModel.swift
//  SwiftfulCrypto
//
//  Created by COBY_PRO on 2022/07/07.
//

import Foundation

class HomeViewModel: ObservableObject {
    
    @Published var allCoins: [CoinModel] = []
    @Published var portfolioCoins: [CoinModel] = []
    
    init() {
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.allCoins.append(DeveloperPreivew.instance.coin)
            self.portfolioCoins.append(DeveloperPreivew.instance.coin)
        }
    }
}
