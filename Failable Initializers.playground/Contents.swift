//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Persistence with NSCoding and NSUserDefaults

let workingDictionary = ["nameKey" : "Derek", "ageKey": 28, "favMovieKey" : "Zoolander"]
let brokenDictionary = ["nameKey" : "Steve", "ageKey": 2]

class Person {
    
    let name: String
    let age: Int
    let favMovie: String
    
    init?(dictionary : [String:AnyObject]) {
        
        guard let name = dictionary["nameKey"] as? String,
        age = dictionary["ageKey"] as? Int,
            favMovie = dictionary["favMovieKey"] as? String else {
                self.name = ""
                self.age = 0
                self.favMovie = ""
                return nil
        }
        
        self.name = name
        self.age = age
        self.favMovie = favMovie
    }
}

let derek = Person(dictionary: workingDictionary)
derek?.name
let steven = Person(dictionary: brokenDictionary)
steven?.name
