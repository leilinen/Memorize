//
//  ContentView.swift
//  Memorize
//
//  Created by 李琳 on 2021/1/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
//        Text("Hello There, world!").padding()
        
        HStack {
            ForEach(0..<4){ index in
                CardView(isFaceUp: true)
            }
        }
        .padding()
        .foregroundColor(Color.orange)
        .font(Font.largeTitle)
    }
}


struct CardView: View {
    var isFaceUp: Bool
    
    var body: some View {
        ZStack{
            if isFaceUp {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.white)
                RoundedRectangle(cornerRadius: 10.0).stroke(lineWidth: 3.0)
                Text("👻")
            } else {
                RoundedRectangle(cornerRadius: 10.0).fill(Color.orange)
            }
        
        }
    }
    
}












struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
