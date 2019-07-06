//
//  CircleImage.swift
//  Test
//
//  Created by sinbad on 6/7/19.
//  Copyright © 2019 sinbad. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    
    var image : Image
    
    var body: some View {
        image
            .clipShape(Circle())
            .overlay(
                Circle().stroke(Color.gray, lineWidth: 4))
            .shadow(radius: 10)
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        CircleImage(image: landmarkData[0].image(forSize: 250))
    }
}
#endif
