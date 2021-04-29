//
//  ContentView.swift
//  PresentationCard
//
//  Created by Lucas Santiago on 06/04/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color(red: 0.20, green: 0.29, blue: 0.52)
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("lucas")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text("Lucas Santiago")
                    .font(Font.custom("Pacifico-Regular", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(imageName: "phone.fill", text: "+55 (11) 9 9277-6878", imageColor: .green, backgroundColor: .white, textColor: .black)
                InfoView(imageName: "envelope.fill", text: "lsn_lucas@hotmail.com", imageColor: .gray, backgroundColor: .white, textColor: .black)
                InfoView(imageName: "linkedin", systemImage: false, text: "linkedin.com/in/lsnlucas/", textColor: .black)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


