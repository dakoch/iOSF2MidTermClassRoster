/* -----------------------------------------------------------------------------
//  FileName: Person.swift
//   Project: iOSF2MidTermClassRoster
//
//  Created by Gru on 10/27/14.
//  Copyright (c) 2014 Gru/CodeFellows. All rights reserved.
//
//  01.A - Create a Person class in Swift with the following functionality:
//  01.B - Properties for a person’s first name and last name and a bool
//         declaring if the person is a student or not
//  01.C - An init method that takes in 3 parameters that are used to set
//         each property on the person.
//  01.D - A method that returns the persons full name
//  01.E - The 'init()' method does not include a 'func' in the signiture
//  01.F - Tried out the 'snapshot/restore' feature, very nice.
//  01.G - Created func getFullName() that uses a tuple type to return the
//         student information.
//  01.H - Added getters and setters
// -----------------------------------------------------------------------------
// */

import Foundation

class Person {   // 01.A

    //  01.B
    var firstName : String = ""
    var lastName  : String = ""
    var isStudent : Bool   = false  // Default

    var fullName  : String = ""

    //  01.E
    init( firstName : String, lastName : String ) {
        setFirstName( firstName )
        setLastName( lastName )
        setIsStudent( false )       // self.isStudent = false

        setFullName( firstName, lastName : lastName )
    }


    // 01.C, 01.E
    init( firstName : String, lastName : String, isStudent : Bool ) {
        setFirstName( firstName )
        setLastName( lastName )
        setIsStudent( isStudent )   //      self.isStudent = isStudent

        setFullName( self.firstName, lastName: self.lastName )
        //    self.fullName  = "\(self.lastName), \(self.firstName)"
    }

    //  01.D - Format: First Last
    func getFullName() -> String {
        return self.fullName
    }

    //  01.D - Format: First Last
    func setFullName( firstName : String, lastName : String ) {
        self.fullName = firstName + " " + lastName
    }

    //  01.D.b - Format: Last, First
    func getFullNameLastFirst() -> String {
        return self.fullName
    }

    //  01.D.b - Format: Last, First
    func setFullNameLastFirst( firstName : String, lastName : String ) {
        self.fullName = lastName + ", " + firstName
    }

    //    Getters & Setters   ----------------  01.H  --------------------------

    func setFirstName( firstName : String ) -> Void {
        self.firstName = firstName
    }

    func getFirstName() -> String {
        return self.firstName
    }

    func setLastName( lastName : String ) -> Void {
        self.lastName = lastName
    }

    func getLastName() -> String {
        return self.lastName
    }

    func setIsStudent( isStudent : Bool ) -> Void {
        self.isStudent = isStudent
    }

    func getIsStudent() -> Bool {
        return self.isStudent
    }

    func isStudent( isStudent : Bool ) {
        if isStudent {
            setIsStudent(true)
        } else {
            setIsStudent(false)
        }
    }

    func getStudentInfo() -> (firstName: String , lastName : String, isStudent : Bool) {
        if isStudent {
            return ( lastName, firstName, isStudent )
        } else {
            // If the current person isn't a student, so there's NO student info.
            return ( "", "", false )
        }
    }
    
}
