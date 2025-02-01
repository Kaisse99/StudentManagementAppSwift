//
//  studentmanager.swift
//  StudentManagementSystem
//
//  Created by Mykyta Varnikov on 2025-02-01.
//

import Foundation

class StudentManager {
    private var students : [Student] = []
    
    func addStudent(){
        
        print("Enter student's ID:", terminator: " ")
        guard let inputId = readLine(), let id = Int(inputId) else {
            print("Invalid ID. Returning to menu.")
            return
        }
        
        print("Enter student's name:", terminator: " ")
        guard let inputName = readLine() else {
            print("Invalid Name. Returning to menu.")
            return
        }
        
        print("Enter a student's grades separated by space", terminator: " ")
        guard let inputGrades = readLine() else {
            print("Invalid input. Returning to menu.")
            return
        }
        
        let gradesArray = inputGrades.split(separator: " ").compactMap { Double($0) }
        
        let student = Student(id: id, name: inputName, grades: gradesArray)
        
        students.append(student)
        print("Student with following data has been added.")
        print("ID: \(student.id), Name: \(student.name), Grades: \(student.grades)")
    }
    
    func viewAllStudents() {
        if students.isEmpty {
            print("No students.")
        } else {
            for student in students {
                print("ID: \(student.id), Name: \(student.name), Grades: \(student.grades)")
            }
        }
    }
    
}
