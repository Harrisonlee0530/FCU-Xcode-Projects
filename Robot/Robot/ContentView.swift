//
//  ContentView.swift
//  Robot
//
//  Created by Harrison Lee on 2020/10/19.
//  Copyright © 2020 Harrison Lee. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var input = ""
    @State var output = ""

    
    var body: some View {
        VStack{
            HStack{
                Text("Chatbot").padding()
                ZStack{
                    Image(systemName: "icloud").resizable().frame(width:90, height:60)
                    Image(systemName: "faceid").resizable().frame(width:25, height: 25)
                }
            }
            
            Image("robot").resizable().frame(width: 181.0, height: 256.0)
            TextField("• • • ", text: $input).padding()
            Button("Done!", action: {
                self.output = self.botResponse(input: self.input)
                }).padding()
            Text(self.output).padding()
        }
    }
    
    func botResponse(input: String) -> String{
        var res = ""
        let lowin = input.lowercased()
        
        if lowin == "hello" {
            res = "Hi!"
        } else if lowin == "who is harrison?" {
            res = "He is a genius"
        } else if lowin == "hi" {
            res = "Hello!"
        } else {
            res = "I am not smart enough to response"
        }
        return res
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
