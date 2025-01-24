//
//  student.swift
//  StudentManagementSystem
//
//  Created by Mykyta Kaisenberg on 2025-01-24.
//

import Foundation

class Student {
    var id : Int = 0
    var name : String = ""
    var grades : [Double] = []
    var average : Double = 0.0
    
    // User will have to enter custom threshold before isPassing() method called
    var threshold : Double = 0.0
    
    
    init(id: Int, name: String, grades: [Double]) {
        self.id = id
        self.name = name
        self.grades = grades
    }
    
    func averageGrade() {
        if (!grades.isEmpty){
            var sum : Double = 0.0
            for i in grades {
                sum += i
            }
            average = sum / Double(grades.count)
        } else {
            average = 0.0
        }
    }
    
    func isPassing() -> Bool{
        return average >= threshold
    }
    
}
