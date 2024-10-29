//
//  CircleView.swift
//  GeometricFigures1
//
//  Created by Haowen Chen on 2024-10-28.
//

import SwiftUI

struct CircleView: View {
    //Stored properties
    @State var currentCircle = Circle(radius: 10)

    
    //Computed properties
    var body: some View {
        VStack {
            
            
            //add an image
            
            
            //Label (describe what slider is for)
            Text("Radius")
            
            
            //Slider control to allow for user input
            Slider(
                value: $currentCircle.radius,
                in: 1...100,
                step: 1.0
            )
            
            //Label (show the current slider value)
            Text("Radius is: \(currentCircle.radius.formatted())")
        }
    }
}

#Preview {
    CircleView()
}
