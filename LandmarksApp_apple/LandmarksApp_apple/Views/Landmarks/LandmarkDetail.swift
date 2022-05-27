//
//  LandmarkDetail.swift
//  LandmarksApp_apple
//
//  Created by Alexander Grigoryev on 26.05.2022.
//

import SwiftUI

struct LandmarkDetail: View {
    
    @EnvironmentObject var modelData: ModelData
    var landMark: Landmark
    
    var landMarkIndex: Int {
        modelData.landmarks.firstIndex(where: { $0.id == landMark.id})!
    }
    
    var body: some View {
        ScrollView {
            MapView(coordinate: landMark.locationCoordinate)
                .frame(height: 300)
                .ignoresSafeArea(edges: .top)
            
            CircleImage(image: landMark.image)
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(landMark.name)
                        .font(.title)
                    FavoriteButton(isSet: $modelData.landmarks[landMarkIndex].isFavorite)
                }
                HStack {
                    Text(landMark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landMark.state)
                }
                .font(.subheadline)
                .foregroundColor(.secondary)
                
                Divider()
                
                Text("About \(landMark.name)")
                    .font(.title2)
                Text(landMark.description)
                    .font(.subheadline)
            }
            .padding()
        }
        .navigationTitle(landMark.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct LandmarkDetail_Previews: PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landMark: ModelData().landmarks[0])
    }
}
