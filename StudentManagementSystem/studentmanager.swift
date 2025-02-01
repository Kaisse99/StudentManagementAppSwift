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
        guard let inputName = readLine(), !inputName.isEmpty else {
            print("No name provided. Returning to menu.")
            return
        }
        
        print("Enter a student's grades separated by space", terminator: " ")
        guard let inputGrades = readLine(), !inputGrades.isEmpty else {
            print("No input provided input. Returning to menu.")
            return
        }
        
        let gradesArray = inputGrades.split(separator: " ").compactMap {
            if let grade = Double($0), grade >= 0 && grade <= 100 {
                return grade
            }
            return nil
        }
        
        if gradesArray.isEmpty {
            print("No valid grades has been entered. Returning to menu")
            return
        }
        
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
