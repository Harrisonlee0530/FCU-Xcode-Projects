//
//  ContentView.swift
//  Navigator
//
//  Created by Harrison Lee on 2020/10/27.
//  Copyright © 2020 Harrison Lee. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Hello, World!")
                NavigationLink(destination: SecondView(), label: {
                    Text("Next")
                })
            }
            .navigationBarTitle("iOS Club - FirstView")
        }
    }
}

struct SecondView: View {
    @State var height = ""
    @State var weight = ""
    @State var BMI = ""
    
    var body: some View {
        NavigationView {
            VStack{
                Text("BMI Calculator")
                    .padding(.all, 20.0)
                
                TextField("Height", text: $height)
                    .padding(.all, 20.0)
                
                TextField("Weight", text: $weight)
                    .padding(.all, 20.0)
                
                Button("Calculate", action: {
                    let h = Float(self.height) ?? 1
                    let w = Float(self.weight) ?? 1
                    let hcm = h / 100
                    let bmi = w / (hcm * hcm)
                    
                    self.BMI = String(bmi)
                    }).padding()
                
                Text(self.BMI)
                
                NavigationLink(destination: ThirdView(), label: {
                        Text("Next")
                    })
                
            }.navigationBarTitle("SecondView - BMI")
        }
    }
}

struct ThirdView: View {
    @State var num = 0
    var body: some View {
        NavigationView {
            VStack{
                Text("Random Things")
                Button("+1", action: {
                    self.num = self.num + 1
                })
                Text(String(Int(self.num)))
            }.navigationBarTitle("ThirdView - Random things")
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
