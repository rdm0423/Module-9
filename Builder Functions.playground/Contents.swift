//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class Car {
    
    private let makeKey = "make"
    private let modelKey = "model"
    private let yearKey = "year"
    
    let make: String
    let model: String
    let year: Int
    
    // computer property - assign code to compute result
    var dictionaryRepresentation: [String: AnyObject] {
        
        let carDictionary: [String: AnyObject] = [makeKey: self.make, modelKey: self.model, yearKey: self.year]
        
        return carDictionary
    }
    
    
    var fullDescription:String {
        
        return "\(year) \(make) \(model)"
    }
    
    // memberwise initializer
    init(make: String, model: String, year: Int) {
        
        self.make = make
        self.model = model
        self.year = year
        
    }
    
    init?(dictionary: [String: AnyObject]) {
        
        guard let make = dictionary[makeKey] as? String,
            let model = dictionary[modelKey] as? String,
            let year = dictionary[yearKey] as? Int else {
                
                // if we are missing something
                
                self.make = "i hate this"
                self.model = "this is pointless"
                self.year = 1800
                
                return nil
        }
        
        // if everything is here
        
        self.make = make
        self.model = model
        self.year = year
    }
}

// Class to Dictionary

let myCar = Car(make: "Chevy", model: "Trailblazer", year: 2005)

print(myCar.dictionaryRepresentation)

// Dictionary to Class

let dreamCarDictionary = ["makeKey": "Ferrari", "modelKey": "488 Speciale", "yearKey": 2018]
let dreamCar = Car(dictionary: dreamCarDictionary)

// Loop Car

let fancyCar = Car(make: "Lamborghini", model: "Aventador", year: 2018)
let fancyCarDictionary = fancyCar.dictionaryRepresentation
let secondFancyCar = Car(dictionary: fancyCarDictionary)
let secondFancyCarDictionary = secondFancyCar?.dictionaryRepresentation




