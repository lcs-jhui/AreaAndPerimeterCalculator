//
//  Result.swift
//  AreaAndPerimeterCalculator
//
//  Created by Justin Hui on 24/1/2023.
//

import Foundation

struct Result: Identifiable {
    let id = UUID()
    let length: Double
    let width: Double
    let roots: String
}


let resultForPreviews = Result(length: 7, width: 2.5, roots: "Area = 17.50 and Perimeter = 19.00")
