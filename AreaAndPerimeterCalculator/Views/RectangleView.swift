//
//  RectangleView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Justin Hui on 17/1/2023.
//

import SwiftUI

struct RectangleView: View {
    
    //MARK: Stored Properties
    //@State is a property wrapper
    @State var length: Double = 7.0
    @State var width: Double = 2.5
    
    //List of Prior Results
    @State var priorResults: [Result] = []
    
    //MARK: Computed Properties
    
    var result: String {
        let area = length * width
        let perimeter = (length + width) * 2
        
        return "Area = \(area.formatted(.number.precision(.fractionLength(2)))) and Perimeter = \(perimeter.formatted(.number.precision(.fractionLength(2))))"
    }
    
    
    //Show our user interface
    var body: some View {
        
        VStack(spacing: 20){
            
            HStack {
                Image("RectangleImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 250)
                
            }
            
            HStack{
                //Length
                Text("Length")
                    .bold()
                    .font(.title2)
                
                //Slider to control length
                Slider(value: $length, in: 0...100,
                       label: { Text("Length") },
                       minimumValueLabel: {Text("0")},
                       maximumValueLabel: { Text("100") })
                
                //Use string interpolation \()
                Text("\(length.formatted(.number.precision(.fractionLength(2))))")
            }
            
            HStack{
                //Width
                Text("Width")
                    .bold()
                    .font(.title2)
                
                //Slider to control width
                Slider(value: $width, in: 0...100,
                       label: { Text("Width") },
                       minimumValueLabel: {Text("0")},
                       maximumValueLabel: { Text("100") })
                
                //Use string interpolation \()
                Text("\(width.formatted(.number.precision(.fractionLength(2))))")
                
            }
            
            VStack(spacing: 20){
                Text("Results")
                    .bold()
                    .font(.title2)
                
                Text(result)
                
                Button(action: {
                    let latestResult = Result(length: length,
                                              width: width,
                                              roots: result)
                    priorResults.append(latestResult)
                }, label: {
                    Text("Save Result")
                })
                .buttonStyle(.bordered)
                .padding()
            }
            
            
            
            Divider()
            
            //Show prior results
            HStack{
                Text("History")
                    .font(.title)
                    .fontWeight(.bold)
                Spacer()
            }
            
            List(priorResults.reversed()) { currentResult in
                HStack{
                    Spacer()
                    ResultView(somePriorResults: currentResult)
                    Spacer()
                }
            }
            
            Spacer()
        }
        .padding()
    }
}

struct RectangleView_Previews: PreviewProvider {
    static var previews: some View {
        RectangleView()
    }
}
