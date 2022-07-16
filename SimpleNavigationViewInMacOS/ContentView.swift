//
//  ContentView.swift
//  SimpleNavigationViewInMacOS
//
//  Created by Ramill Ibragimov on 16.07.2022.
//

import SwiftUI

struct ContentView: View {
    
    var colors: [Color] = [.red, .green, .blue, .yellow, .purple]
    
    var body: some View {
        NavigationView {
            List {
                ForEach(1...5, id: \.self) { val in
                    NavigationLink(destination: PageView(pageText: String(val), color: colors[val - 1])) {
                        Text("Screen \(val)")
                            .font(.largeTitle)
                            .foregroundColor(colors[val - 1])
                            .padding()
                    }
                }
            }
        }
            
    }
}

struct PageView: View {
    
    var pageText = "Test"
    var color: Color = .black
    
    var body: some View {
        VStack {
            Text("Page: \(pageText)")
                .font(.title)
                .foregroundColor(color)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
