//
//  ViewController.swift
//  Swift5Extensions
//
//  Created by Donkemezuo Raymond Tariladou on 7/30/19.
//  Copyright © 2019 EnProTech Group. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let tweets = [ "starting the fall cycle at #pursuit",
                   "#darnclosures are killing me",
                   "dreams of an #ios #developer",
                   "#swiftui is dope, #iosdeveloper #mindblown"
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        generateHashTags()
        findValidNumbers(fromInputStr: numStrings)
        mapDictValues(fromDictValues: dicts)
        compactMapDictValues(fromInputDict: cities)
    }
    
    func findHashtags(fromTweets tweets: String) -> [String] {
        
        var hashTags = [String]()
        let tweetedWords = tweets.components(separatedBy: " ")
        
        hashTags = tweetedWords.filter{$0.hasPrefix("#")}
    
        return hashTags
    }
    


    func generateHashTags() -> [String] {
        
        let hashTags = tweets.map{(findHashtags(fromTweets: $0))}
        
        print(hashTags.flatMap{$0})
        
        return hashTags.flatMap{$0}
        
            }
    

// Using CompactMap
// Use only compactMap to return only valid numbers in the array of string below
// Input: ["1", "a",9, "&", "54", "🦁"]
// Output: [1,9,54,]

   let numStrings = ["1", "a", "9", "&", "54", "🦁"]

func findValidNumbers(fromInputStr str: [String]) -> [Int] {
 
    
    let validNumbers = str.compactMap{Int($0)}
    
    print(validNumbers)
    
    return validNumbers
    
}


//print(validNumbers)
//
func mapDictValues(fromDictValues dict: [Int: Int]) -> [Int: Int]{
    let mappedDict = dicts.mapValues{$0 * $0}
    print(mappedDict)
    return mappedDict
}


let dicts = [2:2, 3:3, 4:4, 5:5]
let cities = ["Stockholm": true, "Tokyo": nil, "Boston": true, "San Francisco": true, "London": nil]
//perform compactMapValues on cities to non-nil elements
// Output: ["Stockholm": true,"Boston": true, "San Francisco"]

func compactMapDictValues(fromInputDict cities: [String: Bool?]) -> [String: Bool] {
    let validCitis = cities.compactMapValues{$0}
    
    print(validCitis)
    
    return validCitis
    
}

    //https://docs.swift.org/swift-book/LanguageGuide/StringsAndCharacters.html
    //Raw Strings
    // Printing raw string as "Hello"
    
    func printRawValues(){
    let message = #""Hello""#
    
    let programmingLanguage = "iOS"
    
 print(message) // This will print "Hello"
    // Handling string interpolation by adding an extra # delimer embedding in \#()
    let pursuitMessage = #""Welcome to Pursuit's \#(programmingLanguage) 6.0 cohort""#
    
    
    print(pursuitMessage) // This will print out "Welcome to Pursuit's iOS 6.0 cohort"
    
    // Character Properties
    let sentence = "1$&4?ap*"
    
    for char in sentence {
    if char.isLetter {
    print("letter: \(char)")
    }


}
    }




}
