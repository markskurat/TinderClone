//
//  ContentView.swift
//  TinderClone
//
//  Created by Mark Skurat on 6/16/22.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var mng: AppStateManager = AppStateManager()
    @ObservedObject var userMng: UserManager = UserManager()
    
    var body: some View {
        MainView()
            .environmentObject(mng)
            .environmentObject(userMng)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
