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
        
        if students.contains(where: {$0.id == id}) {
            print("Student with such ID already exists, enter unique ID.")
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
    
     func averageGrade(){
        print("Enter a Student ID: ", terminator: " ")
        guard let inputIdSeek = readLine(), let idSeek = Int(inputIdSeek) else {
            print("Wrong or no input provided. Returning to menu.")
            return
        }
         
        var foundStatus = false
         
        for student in students {
            if idSeek == student.id {
                foundStatus = true
                var sum : Double = 0.0
                for grade in student.grades {
                    sum += grade
                }
                var averageGrade = sum / Double(student.grades.count)
                print("Average grade for \(student.name) \(student.id) is: \(averageGrade)")
                break
            }
        }
         if foundStatus == false {
             print("No student found with ID: \(idSeek)")
         }
    }
    
    func passingStudents() {
        var passingStudents : [Student] = []
        var failingStudents : [Student] = []
        print("Enter a grade threshold | 0 - 100", terminator: " ")
        guard let inputThreshold = readLine(), let threshold = Double(inputThreshold), threshold <= 100 && threshold >= 0 else {
            print("Wrong or no input, enter 0 - 100.")
            return
        }
        var sum : Double = 0.0
        for student in students {
            for grade in student.grades{
                sum += grade
            }
            var averageGrade = sum / Double(student.grades.count)
            if averageGrade >= threshold {
                passingStudents.append(student)
            } else {
                failingStudents.append(student)
            }
        }
        print("+++++List Of Passing Studens+++++")
        for student in passingStudents {
            print("ID: \(student.id) | Name: \(student.name) | Grades: \(student.grades)")
        }
        print("-----List Of Failing Studens-----")
        for student in failingStudents {
            print("ID: \(student.id) | Name: \(student.name) | Grades: \(student.grades)")
        }
    }
    
}
