//
//  AppDelegate.swift
//  swift-solving-trivia
//
//  Created by Joel Bell on 7/8/16.
//  Copyright © 2016 Joel Bell. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    var window: UIWindow?
    
    let statesAndCapitals  = [
        "Alabama":"Montgomery",
        "Alaska":"Juneau",
        "Arizona":"Phoenix",
        "Arkansas":"Little Rock",
        "California":"Sacramento",
        "Colorado":"Denver",
        "Connecticut":"Hartford",
        "Delaware":"Dover",
        "Florida":"Tallahassee",
        "Georgia":"Atlanta",
        "Hawaii":"Honolulu",
        "Idaho":"Boise",
        "Illinois":"Springfield",
        "Indiana":"Indianapolis",
        "Iowa":"Des Moines",
        "Kansas":"Topeka",
        "Kentucky":"Frankfort",
        "Lousiana":"Baton Rouge",
        "Maine":"Augusta",
        "Maryland":"Annapolis",
        "Massassachusetts":"Boston",
        "Michigan":"Lansing",
        "Minnesota":"Saint Paul",
        "Mississippi":"Jackson",
        "Missouri":"Jefferson City",
        "Montana":"Helena",
        "Nebraska":"Lincoln",
        "Nevada":"Carson City",
        "New Hampshire":"Concord",
        "New Jersey":"Trenton",
        "New Mexico":"Santa Fe",
        "New York":"Albany",
        "North Carolina":"Raleigh",
        "North Dakota":"Bismarck",
        "Ohio":"Columbus",
        "Oklahoma":"Oklahoma City",
        "Oregon":"Salem",
        "Pennsylvania":"Harrisburg",
        "Rhode Island":"Providence",
        "South Carolina":"Columbia",
        "South Dakota":"Pierre",
        "Tennessee":"Nashville",
        "Texas":"Austin",
        "Utah":"Salt Lake City",
        "Vermont":"Montpelier",
        "Virgina":"Richmond",
        "Washington":"Olympia",
        "West Virginia":"Charleston",
        "Wisconsin":"Madison",
        "Wyoming":"Cheyenne"]

    func applicationDidFinishLaunching(application: UIApplication) {
        print(solveTrivia(statesAndCapitals))
    }
    
    func solveTrivia(trivia: [String : String]) -> String {
        for (state, capital) in trivia {
            var modifiedState = state.lowercaseString
            var modifiedCapital = capital.lowercaseString
            var isAnswer : Bool = true
            
            modifiedCapital = modifiedCapital.stringByReplacingOccurrencesOfString(" ", withString: "")
            modifiedState = modifiedState.stringByReplacingOccurrencesOfString(" ", withString: "")
            
            print("State: \(modifiedState) // Capital: \(modifiedCapital)")
            
            for capitalChar in modifiedCapital.characters {
                for stateChar in modifiedState.characters {
                    if capitalChar == stateChar {
                        print("\(capitalChar) == \(stateChar)")
                        isAnswer = false
                        break;
                    }
                }
                if !isAnswer {
                    break;
                }
            }
            if isAnswer {
                return state
            }
        }
        return "Answer not found"
    }
    
    /*
     
     write your function here
     
     */

}

