//
//  main.swift
//  StudentManagementSystem
//
//  Created by Mykyta Varnikov on 2025-01-24.
//
import Foundation

func menu(){
    print("===== Student Management System =====")
    print("1. Add a new student")
    print("2. View all students")
    print("3. Calculate average grade for a student")
    print("4. Display passing or failing students")
    print("5. Exit")
    print("=====================================")
}

let manager = StudentManager()

menu()
while true {
    print("Enter your choice:", terminator: " ")
    guard let input = readLine(), let choice = Int(input) else {
        print("Invalid or no input detected, try again.")
        continue
    }

    switch (choice) {
    case 1:
        print("Adding a Student")
        manager.addStudent()
    case 2:
        print("Viewing All Students")
        manager.viewAllStudents()
    case 3:
        print("you pickeed 3")
    case 4:
        print("you pickeed 4")
    case 5:
        print("Closing a program, goodbye!")
        sleep(3)
        exit(0)
    default:
        print("Wrong choice, try again.")
    }
}
