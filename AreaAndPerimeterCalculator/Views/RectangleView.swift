//
//  RectangleView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Justin Hui on 17/1/2023.
//

import SwiftUI

struct RectangleView: View {
    
    //MARK: Stored Properties
    let length: Double = 7
    let width: Double = 5
    
    
    //MARK: Computed Properties
    var area: Double {
        return length * width
    }
    
    //Show our user interface
    var body: some View {
        
        VStack{
            
            HStack {
                Image("RectangleImage")
                    .resizable()
                    .scaledToFit()
                .frame(width: 250)
                
                Spacer()
            }
            
            //Length
            Text("Length")
                .bold()
                .font(.title2)
            //Use string interpolation \()
            Text("\(length)")
            
            //Width
            Text("Width")
                .bold()
                .font(.title2)
            //Use string interpolation \()
            Text("\(width)")
            
            //Area
            Text("Area")
                .bold()
                .font(.title2)
            //Use string interpolation \()
            Text("\(area)")
            
            Spacer()
            
        }
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
