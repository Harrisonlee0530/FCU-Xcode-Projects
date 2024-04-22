//
//  ContentView.swift
//  Test
//
//  Created by user on 2020/9/22.
//  Copyright © 2020 Harrison. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var name  = ""
    var body: some View {
        VStack {
            VStack {
                Text("Hi \(name)")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .foregroundColor(Color.blue)
                    .multilineTextAlignment(.center)
                TextField("\t\t\t\t    Username", text: $name)
                    .padding(.all, 20.0)
                    .border(/*@START_MENU_TOKEN@*/Color.red/*@END_MENU_TOKEN@*/, width: /*@START_MENU_TOKEN@*/1/*@END_MENU_TOKEN@*/)
                Button(action: {
                    self.name = "Harrison"
                }) {
                    Text("Hello \(name)").foregroundColor(Color.black)
                }

            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .padding(.all, 20.0)
    }
}
