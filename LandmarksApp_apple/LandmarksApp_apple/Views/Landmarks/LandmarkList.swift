//
//  LandmarkList.swift
//  LandmarksApp_apple
//
//  Created by Alexander Grigoryev on 26.05.2022.
//

import SwiftUI

struct LandmarkList: View {
    
    @EnvironmentObject var modelData: ModelData
    @State private var showFavoritesOnly = false
    
    var filteredLandmarks: [Landmark] {
        modelData.landmarks.filter { lanmark in
            (!showFavoritesOnly || lanmark.isFavorite)
        }
    }
    
    var body: some View {
        NavigationView {
            List {
                Toggle(isOn: $showFavoritesOnly) {
                    Text("Favorites only")
                }
                
                ForEach(filteredLandmarks, id: \.id) { landmark in
            NavigationLink {
                LandmarkDetail(landMark: landmark)
            } label: {
                LandmarkRow(landMark: landmark)
            }
                }
        }
        }
        .navigationTitle("Landmarks")
    }
}

struct LandmarkList_Previews: PreviewProvider {
    static var previews: some View {
            LandmarkList()
            .environmentObject(ModelData())
    }
}
