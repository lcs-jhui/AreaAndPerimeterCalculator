//
//  ResultView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Justin Hui on 24/1/2023.
//

import SwiftUI

struct ResultView: View {
    
    //MARK: Stored Properties
    let somePriorResults: Result
    
    //MARK: Computed Properties
    var body: some View {
        
        VStack(spacing: 20){
            
            HStack(spacing: 30){
                Text("Length: \(resultForPreviews.length.formatted(.number.precision(.fractionLength(2))))")
                
                Text("Width: \(resultForPreviews.width.formatted(.number.precision(.fractionLength(2))))")
            }
            
            Text(somePriorResults.roots)
            
        }
    }
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        ResultView(somePriorResults: resultForPreviews)
    }
}
