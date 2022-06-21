//
//  Person.swift
//  TinderClone
//
//  Created by Mark Skurat on 6/18/22.
//

import Foundation
import SwiftUI

// Tracks other people in the app not the current user

struct Person: Hashable, Identifiable {
    let id = UUID().uuidString
    
    var name: String
    var imageURLS: [URL]
    var bio: String
    var distance: Int
    
    var bioLong: String
    
    var age: Int
    
    // Used for card manipulation
    var x: CGFloat = 0.0
    var y: CGFloat = 0.0
    var degree: Double = 0.0
}



extension Person {
    static let example = Person(
        name: "Alex",
        imageURLS: [
            URL(string: "https://picsum.photos/400/300")!,
            URL(string: "https://picsum.photos/400/301")!,
            URL(string: "https://picsum.photos/400/302")!,
            URL(string: "https://picsum.photos/400/303")!
        ],
        bio: "This is my bio. I really love dogs. I really love dogs. I really love dogs. I really love dogs.",
        distance: 20,
        bioLong: "This is my bio. I really love dogs. I really love dogs. I really love dogs. I really love dogs.",
        age: 21
    )
    static let example2 = Person(
        name: "Samantha",
        imageURLS: [URL(string: "https://picsum.photos/400/301")!],
        bio: "I really love dogs",
        distance: 25,
        bioLong: "This is my bio. I really love dogs. I really love dogs. I really love dogs. I really love dogs.",
        age: 25
    )
    
    static let examples: [Person] = [
        Person.example,
        Person.example2,
        Person(
            name: "Olivia",
            imageURLS: [
                URL(string: "https://picsum.photos/400/302")!,
                URL(string: "https://picsum.photos/400/303")!,
                URL(string: "https://picsum.photos/400/304")!,
                URL(string: "https://picsum.photos/400/305")!
            ],
            bio: "I love hiking",
            distance: 30,
            bioLong: "This is my bio. I really love dogs. I really love dogs. I really love dogs. I really love dogs.",
            age: 30
        ),
        Person(
            name: "Sophia",
            imageURLS: [
                URL(string: "https://picsum.photos/400/306")!,
                URL(string: "https://picsum.photos/400/307")!,
                URL(string: "https://picsum.photos/400/308")!,
                URL(string: "https://picsum.photos/400/309")!
            ],
            bio: "I am really boring",
            distance: 40,
            bioLong: "This is my bio. I really love dogs. I really love dogs. I really love dogs. I really love dogs.",
            age: 28
        ),
        Person(
            name: "Mia",
            imageURLS: [
                URL(string: "https://picsum.photos/400/310")!,
                URL(string: "https://picsum.photos/400/311")!,
                URL(string: "https://picsum.photos/400/312")!,
                URL(string: "https://picsum.photos/400/313")!
            ],
            bio: "I like to skateboard",
            distance: 50,
            bioLong: "This is my bio. I really love dogs. I really love dogs. I really love dogs. I really love dogs.",
            age: 22
        )
    ]
}
