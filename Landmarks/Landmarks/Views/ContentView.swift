//
//  ContentView.swift
//  Landmarks
//
//  Created by Harrison Lee on 2021/3/29.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
    }
}
