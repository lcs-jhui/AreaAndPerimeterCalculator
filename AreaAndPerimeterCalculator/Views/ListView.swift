//
//  ListView.swift
//  AreaAndPerimeterCalculator
//
//  Created by Justin Hui on 19/1/2023.
//

import SwiftUI

struct ListView: View {
    var body: some View {
        NavigationView{
            
            List{
                
                NavigationLink(destination: {
                    RectangleView()
                }, label: {
                    Text("Rectangle")
                })
               
                NavigationLink(destination: {
                    SquareBasedPyramid()
                }, label: {
                    Text("Square Based Pyramid")
                })
                
            }
            
            .navigationTitle("Area and Perimeter")
        }
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}
