//
//  ContentView.swift
//  BMI_calculator
//
//  Created by user on 2020/9/28.
//  Copyright © 2020 Harrison. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @State var height = ""
    @State var weight = ""
    @State var BMI = ""
    @State var num = 0
    
    var body: some View {
        VStack{
            Text("BMI Calculator")
                .padding(.all, 20.0)

            TextField("Height", text: $height)
                .padding(.all, 20.0)
                .keyboardType(.numberPad)

            TextField("Weight", text: $weight)
                .padding(.all, 20.0)
                .keyboardType(.numberPad)
            
            Button("Calculate", action: {
                let h = Float(self.height) ?? 1
                let w = Float(self.weight) ?? 1
                
                let hcm = h / 100
                let bmi = w / (hcm * hcm)
//                print(h)
//                print(w)
//                print(bmi)
                self.BMI = String(bmi)
            })
            
            Button("+1", action: {
                self.num = self.num + 1
            })
            
            Text(self.BMI)
            Text(String(Int(self.num)))
        }
    }
}

@available(iOS 13.0.0, *)
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
