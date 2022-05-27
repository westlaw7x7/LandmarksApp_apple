//
//  ContentView.swift
//  LandmarksApp_apple
//
//  Created by Alexander Grigoryev on 25.02.2022.
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
