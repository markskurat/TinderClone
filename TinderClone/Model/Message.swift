//
//  Message.swift
//  TinderClone
//
//  Created by Mark Skurat on 6/18/22.
//

import Foundation

struct Message: Hashable {
    
    var content: String
    var person: Person? = nil
    
    var fromCurrentUser: Bool {
        return person == nil
    }
}

extension Message {
    static let exampleSent = Message(content: "Hello there")
    static let exampleReceived = Message(content: "Hello there", person: Person.example)
}
