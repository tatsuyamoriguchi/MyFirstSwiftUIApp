//
//  ContentView.swift
//  MyFirstSwiftUIApp
//
//  Created by Tatsuya Moriguchi on 11/18/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
  
        List(0..<10) { _ in
            Text("Hello, world!")
                .foregroundColor(.orange)
                .padding()
                .font(.system(size: 20, weight: .bold, design: .default))
                
            

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice(PreviewDevice(rawValue: "iPhone 11 Pro"))
    }
}
