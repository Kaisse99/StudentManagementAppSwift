//
//  main.swift
//  StudentManagementSystem
//
//  Created by Mykyta Varnikov on 2025-01-24.
//

import Foundation
var students: [Student] = []
var choice : Int = 0
while choice != 5 {
    print("=====Student Management System=====")
    print("1 - Add a new student")
    print("2 - View all students")
    print("3 - Calculate taverage grade for student")
    print("4 - Display passing or failing students")
    print("5 - Exit")
    
    if let input = readLine(), let userInput = Int(input) {
        choice = userInput
        
        switch choice {
        case 1:
            print("Please input student ID: ")
            if let input = readLine(), let tempId = Int(input){
                
                print("Please enter student's name: ")
                if let tempName = readLine(), !tempName.isEmpty {
                    print("Please, enter student's grades: ")
                    if let tempGrades = readLine(), let tempGrades = Double(input){
                        
                        
                        let newStudent = Student(id: tempId, name: tempName, grades: [tempGrades])
                        students.append(newStudent)
                        print("New Student has been created with following id & name: \(tempId) \(tempName)")
                    }
                }
            }
            
        case 2:
            print("\(students)")
        case 3:
            print("3")
        case 4:
            print("4")
        case 5:
            print("Program is closing...")
            sleep(3)
        choice = 5
        default:
            print("Not valid input, try again")
        }
    }
}

    
    
    
    
