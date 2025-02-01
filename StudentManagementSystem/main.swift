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

var students: [Student] = []

menu()
guard let input = readLine(), let choice = Int(input) else {
    print("No input...")
    exit(0)
}
switch (choice) {
case 1:
    
case 2:
    print("you pickeed 2")
case 3:
    print("you pickeed 3")
case 4:
    print("you pickeed 4")
case 5:
    print("you pickeed 5")
default:
    print("Wrong Input, Try again")
}
