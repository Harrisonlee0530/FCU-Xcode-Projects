//
//  ContentView.swift
//  Random App
//
//  Created by Harrison Lee on 2020/10/12.
//  Copyright © 2020 Harrison Lee. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var randomResult = ""
    @State var min: String = ""
    @State var max: String = ""
    @State var num: String = ""
    @State var sliderValue: Float = 1
    
    var body: some View {
        VStack{
            Text("Random Result Generator").font(.title).padding()
            
            HStack{
                Text("Generate")
                    .frame(width: 80.0)
                TextField("x", text: $num)
                    .frame(width: 20.0)
                Text("numbers between")
                    .frame(width: 150.0)
                TextField("min", text: $min)
                    .frame(width: 30.0)
                Text("and")
                    .frame(width: 30.0)
                TextField("max", text: $max)
                    .frame(width: 30.0)
            }.padding()
            
            Text(randomResult)
                .padding()
                .frame(width: 380.0, height: 300.0)
            
            Button("Random", action: {
                self.randomResult = ""
                
                let x = Int(self.num) ?? 0
                let min = Int(self.min) ?? 0
                let max = Int(self.max) ?? 0
                
                var numbers = [Int]()
                
                if max < min {
                    self.randomResult = "Error! min cannot be larger than max."
                } else if (max - min) <= x {
                    self.randomResult = "Error! There is no enough space between \(String(min)) and \(String(max))"
                } else {
                    for i in 0...(x-1) {
                        var r = Int.random(in: min...max)
                        
                        while numbers.contains(r) {
                            r = Int.random(in: min...max)
                        }
                        numbers.append(r)
                        
                        self.randomResult = "\(self.randomResult)\(i).\t\(r)"
//                        self.randomResult = "\(numbers)"
                    }
                }
            })
            
            Slider(value: $sliderValue, in: 1...100, step: 1)
            Text("\(Int(self.sliderValue))")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
