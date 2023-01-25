//
//  SquareBasedPyramid.swift
//  AreaAndPerimeterCalculator
//
//  Created by Justin Hui on 19/1/2023.
//

import SwiftUI

struct SquareBasedPyramid: View {
    
    //MARK: Stored Properties
    @State var base: Double = 20
    @State var height: Double = 50
    @State var side: Double = 30
    
    //MARK: Computed Properties
    var volume: Double{
        return (base * base) + (2 * base * side)
    }
    
    var surfaceArea: Double{
        return (base * base * height) / 3
    }
    
    //Show interface
    var body: some View {
        
        VStack (spacing: 10){
            
            Image("SquareBasedPyramid")
                .resizable()
                .scaledToFit()
                .frame(width: 200)
                .padding()
            
            
            Group{
                
                Text("Base Length")
                    .bold()
                    .font(.title2)
                
                Slider(value: $base, in: 0...100,
                       label: { Text("Base") },
                       minimumValueLabel: {Text("0")},
                       maximumValueLabel: { Text("100") })
                .padding()
                
                Text("\(base.formatted(.number.precision(.fractionLength(2))))")
                
            }
            
            Group{
                Text("Height")
                    .bold()
                    .font(.title2)
                
                Slider(value: $height, in: 0...100,
                       label: { Text("Height") },
                       minimumValueLabel: {Text("0")},
                       maximumValueLabel: { Text("100") })
                .padding()
                
                Text("\(height.formatted(.number.precision(.fractionLength(2))))")
            }
            
            Group{
                Text("Side length")
                    .bold()
                    .font(.title2)
                
                Slider(value: $side, in: 0...100,
                       label: { Text("Side") },
                       minimumValueLabel: {Text("0")},
                       maximumValueLabel: { Text("100") })
                .padding()
                
                Text("\(side)")
            }
            
            Text("Volume")
                .bold()
                .font(.title2)
            
            Text("\(volume.formatted(.number.precision(.fractionLength(2))))")
            
            Text("Surface Area")
                .bold()
                .font(.title2)
            
            Text("\(surfaceArea.formatted(.number.precision(.fractionLength(2))))")
            
        }
    }
}

struct SquareBasedPyramid_Previews: PreviewProvider {
    static var previews: some View {
        SquareBasedPyramid()
    }
}
