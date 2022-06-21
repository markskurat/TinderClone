//
//  AppStateManager.swift
//  TinderClone
//
//  Created by Mark Skurat on 6/16/22.
//

import Foundation


class AppStateManager: ObservableObject {
    
    @Published var selectedTab: TabBarButtonType = .fire
    
    @Published var showPersonsProfile: Person? = nil
    
    @Published var showPurchasePopoup: Bool = false
    
    public func showPersonsProfile(_ person: Person) {
        self.showPersonsProfile = person
    }
    
    public func showPurchaseScreen() {
        self.showPurchasePopoup = true
    }
}
