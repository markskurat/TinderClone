//
//  MessageListVM.swift
//  TinderClone
//
//  Created by Mark Skurat on 6/19/22.
//

import Foundation

class MessageListVM: ObservableObject {
    @Published var messagePreviews: [MessagePreview] = []
    
    init() {
        loadPreviews()
    }
    
    func loadPreviews() {
        
        //Handle networking to load messagePreviews from a server
        self.messagePreviews = MessagePreview.examples
    }
}
