//
//  main.swift
//  DealOrNoDeal
//
//  Created by Gordon, Russell on 2020-02-04.
//  Copyright © 2020 Gordon, Russell. All rights reserved.
//

import Foundation

//
// INPUT SECTION OF PROGRAM
//
var briefcasesOpened = -1
var briefcaseOpenedThisTime = -1

// Loop until valid input provided by user
while true {
    
    // Ask for input
    print("How many briefcases have been opened?")
    guard let inputGiven = readLine() else {
        
        // No input given, return to top of loop and ask again
        continue
    }
    
    // Attempt to make input into an integer
    guard let integerGiven = Int(inputGiven) else {
        
        // Could not make input into an integer, so return to top and ask again
        continue

    }
    
    // Check that integer is in desired range
    // REMEMBER: Guard statement conditions describe what we WANT
    guard integerGiven > 0, integerGiven < 11 else {
        
        // Integer not in desired range, return to top and ask again
        continue
        
    }
    
    // If we've made it here, the input is valid
    briefcasesOpened = integerGiven
    
    // Stop looping
    break
    
}

//
// PROCESS SECTION OF PROGRAM
//

// Create the array with briefcase values
var briefcaseValues = [100, 500, 1_000, 5_000, 10_000, 25_000, 50_000, 100_000, 500_000, 1_000_000]

// getBriefcaseOpened
//
// PURPOSE:
//
// Asks the user for a briefcase that is opened during a turn, as shown in the example.
// When the input is invalid, the prompt is repeated.
//
// INPUT / PARAMETERS:
//
// What turn it is
//
// OUTPUT / RETURN VALUE:
//
// An integer between 1 and 10, inclusive
func getBriefcaseOpened(onTurn turn: Int) -> Int {
    
    // STUDENTS: Complete this function
    while true{
        
        // Ask for input
        print("Which briefcase did you chose on turn \(turn)?")
        guard let inputGiven2 = readLine() else {
            
            // No input given, return to top of loop and ask again
            continue
        }
        
        // Attempt to make input into an integer
        guard let integerGiven2 = Int(inputGiven2) else {
            
            // Could not make input into an integer, so return to top and ask again
            continue

        }
        
        // Check that integer is in desired range
        // REMEMBER: Guard statement conditions describe what we WANT
        guard integerGiven2 > 0, integerGiven2 < 11 else {
            
            // Integer not in desired range, return to top and ask again
            continue
            
        }
        
        // If we've made it here, the input is valid
        briefcaseOpenedThisTime = integerGiven2
        
        
        // The statement below can be modified
        return briefcaseOpenedThisTime
    }
    
}

func bankerOfferFunc()-> Int {
    
    while true {
        
        // Ask for input
        print("What is the bankers offer?")
        guard let inputGiven3 = readLine() else {
            
            // No input given, return to top of loop and ask again
            continue
        }
        
        // Attempt to make input into an integer
        guard let integerGiven3 = Int(inputGiven3) else {
            
            // Could not make input into an integer, so return to top and ask again
            continue

        }
        
        // Check that integer is in desired range
        // REMEMBER: Guard statement conditions describe what we WANT
        guard integerGiven3 > 0 else {
            
            // Integer not in desired range, return to top and ask again
            continue
            
        }
        
        // The statement below can be modified
        return integerGiven3
    }
}


// Loop and ask what briefcases have been opened
for turn in 1...briefcasesOpened {
    
    // Get which briefcase was opened
    let briefcaseOpenedThisTime = getBriefcaseOpened(onTurn: turn)
    
    // STUDENTS: Now that you know what briefcase is opened... what might you do to the array value(s)?
    
    briefcaseValues[briefcaseOpenedThisTime - 1] = 0
    
}

// STUDENTS: Do any remaining calculations you might need below.

func findAverage()-> Double {
    
    // Iterate over values and add them up
    
    var runningTotal = 0
    
    for value in briefcaseValues {
        runningTotal += value
    }
    
    return Double(runningTotal) / Double(10 - briefcasesOpened)
    
}

var average = findAverage()
var bankerOffer = bankerOfferFunc()

//
// OUTPUT SECTION OF PROGRAM
//

// STUDENTS: Now tell the player whether to take the deal, or not.

func dealOrNoDeal() {
     
    // if average is less the banker offer, no deal otherwise deal
    if average > Double(bankerOffer) {
        print("No Deal")
    } else {
        print("Deal")
    }
}

dealOrNoDeal()
