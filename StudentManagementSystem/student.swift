//
//  student.swift
//  StudentManagementSystem
//
//  Created by Mykyta Varnikov on 2025-01-24.
//

import Foundation

class Student {
    var id : Int = 0
    var name : String = ""
    var grades : [Double] = []
        
    init(id: Int, name: String, grades: [Double]) {
        self.id = id
        self.name = name
        self.grades = grades
    }
}
