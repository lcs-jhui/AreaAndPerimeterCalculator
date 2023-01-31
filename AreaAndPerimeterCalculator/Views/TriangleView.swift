//
//  TriangleView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Justin Hui on 31/1/2023.
//

import SwiftUI

struct TriangleView: View {
    
    //MARK: Stored Properties
    @State var length = ""
    @State var width = ""
    @State var height = ""
    
    //MARK: Computed Properties
    
    //Calculate area of triangle
    var calculatedArea: Double? 
    
    var body: some View {
        
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        
    }
    
}

struct TriangleView_Previews: PreviewProvider {
    static var previews: some View {
        TriangleView()
    }
}
