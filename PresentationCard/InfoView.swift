//
//  InfoView.swift
//  PresentationCard
//
//  Created by Lucas Santiago on 06/04/21.
//

import SwiftUI

struct InfoView: View {
    
    var imageName: String
    var systemImage: Bool = true
    var text: String
    var imageColor: Color = Color.green
    var backgroundColor: Color = Color.white
    var textColor : Color = Color.black
    
    var body: some View {
        RoundedRectangle(cornerRadius: 25.0)
            .fill(backgroundColor)
            .frame(height: 50)
            .overlay(
                HStack {
                    switch systemImage {
                        case true:
                            Image(systemName: imageName).foregroundColor(imageColor)
                            Text(text).foregroundColor(.black)
                        case false:
                            Image(imageName)
                                .resizable()
                                .aspectRatio(contentMode: .fit)
                                .frame(width: 25, height: 25).foregroundColor(imageColor)
                            Text(text).foregroundColor(.black)
                    }
                })
            .padding(.all)
    }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(imageName: "linkedin", systemImage: false, text: "+55 (11) 9 9277-6878")
            .previewLayout(.sizeThatFits)
            .foregroundColor(.black)
    }
}
