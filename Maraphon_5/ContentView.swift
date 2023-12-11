//
//  ContentView.swift
//  Maraphon_5
//
//  Created by Evgeny Evtushenko on 11/12/2023.
//

import SwiftUI

struct ContentView: View {
    @State var offset: CGSize = .zero
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
                Color.white
                Color.red
                Color.yellow
                Color.black
            }
            .ignoresSafeArea()
            
            ZStack {
                RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(.white)
                    .blendMode(.difference)
                
                RoundedRectangle(cornerRadius: 12)
                    .blendMode(.color)
                
                RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(.white)
                    .blendMode(.overlay)
                
                RoundedRectangle(cornerRadius: 12)
                    .foregroundStyle(.black)
                    .blendMode(.overlay)
            }
                .frame(width: 100, height: 100)
                .offset(offset)
                .gesture(DragGesture().onChanged({ gesture in
                    offset = gesture.translation
                }))
        }
    }
}

#Preview {
    ContentView()
}
