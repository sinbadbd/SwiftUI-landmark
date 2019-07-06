//
//  LandmarkRow.swift
//  Test
//
//  Created by sinbad on 6/7/19.
//  Copyright © 2019 sinbad. All rights reserved.
//

import SwiftUI

struct LandmarkRow : View {
    
    //var landMark : Landmark
    var landmark : Landmark
    
    var body: some View {
        HStack{
            landmark.image(forSize: 50)
            Text(landmark.name)
        }
    }
}


struct LandmarkRow_Previews : PreviewProvider {
    static var previews: some View {
        Group {
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
        }
        .previewLayout(.fixed(width: 300, height: 70))
    }
}
