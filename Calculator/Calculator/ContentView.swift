//
//  ContentView.swift
//  Calculator
//
//  Created by Harrison Lee on 2020/10/5.
//  Copyright © 2020 Harrison Lee. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var a: String = ""
    @State var b: String = ""
    @State var ans: String = ""
    
    var body: some View {

        VStack{
            Text("Calculator")
                .font(.largeTitle)
                .foregroundColor(Color.gray)
                .padding()
            
            TextField("insert a", text: $a).padding()
            
            HStack{
                Button("+", action: {
                    let aa = Float(self.a) ?? 0
                    let bb = Float(self.b) ?? 0
                    
                    let cc = aa + bb
                    self.ans = String(cc)
                    }).padding()
                
                Button("-", action: {
                    let aa = Float(self.a) ?? 0
                    let bb = Float(self.b) ?? 0
                    
                    let cc = aa - bb
                    self.ans = String(cc)
                    }).padding()
                
                Button("x", action: {
                    let aa = Float(self.a) ?? 0
                    let bb = Float(self.b) ?? 0
                    
                    let cc = aa * bb
                    self.ans = String(cc)
                    }).padding()
                
                Button("÷", action: {
                    let aa = Float(self.a) ?? 0
                    let bb = Float(self.b) ?? 0
                    if bb != 0 {
                        let cc = aa / bb
                        self.ans = String(cc)
                    } else {
                        self.ans = "Does Not Exist"
                    }
                    }).padding()
            }
            
            TextField("insert b", text: $b).padding()
            
            Text("=").padding()
            
            if self.ans != "Does Not Exist"{
                Text(ans).padding()
            } else {
                Text(ans).foregroundColor(Color.red).padding()
            }
                
            Button("Reset", action: {
                self.a = ""
                self.b = ""
                self.ans = ""
            })
        }
        .border(/*@START_MENU_TOKEN@*/Color.white/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/2/*@END_MENU_TOKEN@*/)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
