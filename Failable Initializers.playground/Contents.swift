//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

// Persistence with NSCoding and NSUserDefaults

let workingDictionary = ["nameKey" : "Derek", "ageKey": 28, "favMovieKey" : "Zoolander"]
let brokenDictionary = ["nameKey" : "Steve", "ageKey": 2]

class Person {
    
    private let nameKey = "nameKey"
    private let ageKey = "ageKey"
    private let favMovieKey = "favMovieKey"
    
    var name: String?
    var age: Int?
    var favMovie: String?
    
    init?(dictionary : [String:AnyObject]) {
        
        guard let name = dictionary[nameKey] as? String,
            age = dictionary[ageKey] as? Int,
            favMovie = dictionary[favMovieKey] as? String else {

                return nil
        }
        self.name = name
        self.age = age
        self.favMovie = favMovie
    }
}

let derek = Person(dictionary: workingDictionary)
derek?.name
let steve = Person(dictionary: brokenDictionary)
steve?.name
