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
            
            //1. Input
            //Slider control to allow for user input
            Slider(
                value: $currentCircle.radius,
                in: 1...100,
                step: 1.0
            )
            
            //3. Output
            //Label (show the current slider value)
            Text("Radius is: \(currentCircle.radius.formatted())")
            
            //Label (show the diameter)
            Text("Diameter is: \(currentCircle.diameter.formatted())")
            
            //Label (show the area)
            Text("Area is: \(currentCircle.area.formatted())")
            
            //Label (show the circumference)
            Text("Circumference is: \(currentCircle.circumference.formatted())")
        }
    }
}

#Preview {
    CircleView()
}
