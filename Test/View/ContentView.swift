//
//  ContentView.swift
//  Test
//
//  Created by sinbad on 6/7/19.
//  Copyright © 2019 sinbad. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    var landmark : Landmark
    
    var body: some View {
        
        VStack{
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image(forSize: 250))
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading){
                Text(landmark.name)
                    .font(.title)
                    .color(.green)
                HStack {
                    Text(landmark.park)
                        .font(.subheadline)
                    Spacer()
                    Text(landmark.state)
                        .font(.subheadline)
                }
            }
            .padding()
            
            Spacer()
        }
        .navigationBarTitle(Text(landmark.name), displayMode: .inline)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView(landmark: landmarkData[3])
    }
}
#endif
