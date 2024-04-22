//
//  ContentView.swift
//  Game
//
//  Created by Harrison Lee on 2020/12/14.
//  Copyright © 2020 Harrison Lee. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var input: String = ""
    @State var max: String = ""
    @State var min: String = ""
//    @State var result: String = ""
    @State var count: Int = 0
    @State var showAlert: Bool = false
    
    var game = Game()
    
    var body: some View {
        VStack {
            Button("Start", action: {
                self.game.start()
                self.max = String(self.game.max)
                self.min = String(self.game.min)
                self.count = 0
            })
            
            Text("Count: " + String(self.count)).padding()
            
            Text("Guess an integer between " + min + "~" + max).padding()
            
            TextField("input", text: $input)
           
            Button("Guess", action: {
                if self.game.guess(input: Int(self.input) ?? 0) {
                    self.showAlert = true
                    self.game.start()
                    self.max = String(self.game.max)
                    self.min = String(self.game.min)
                    self.count = 0
//                    self.result = "You Win!"
                }
                self.max = String(self.game.max)
                self.min = String(self.game.min)
                self.count += 1
                }).alert(isPresented: $showAlert, content: {
                    return Alert(title: Text("You Win!"))
                })

            Button("Restart", action: {
                self.game.start()
                self.max = String(self.game.max)
                self.min = String(self.game.min)
//                self.result = ""
                self.count = 0
            })
        }
    }
}

class Game {
    var max: Int = 0
    var min: Int = 0
    var ans: Int = 0
    var count: Int = 0
    
    func start() {
        ans = Int.random(in: 1...99)
        max = 100
        min = 0
        count = 0
    }
    
    func guess(input: Int) -> Bool {
        if ans == input {
            return true
        } else if max > input && input > ans {
            max = input
        } else if min < input && input < ans {
            min = input
        }
        return false
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
