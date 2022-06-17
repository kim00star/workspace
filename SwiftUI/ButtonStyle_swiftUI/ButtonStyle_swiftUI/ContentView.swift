//
//  ContentView.swift
//  ButtonStyle_swiftUI
//
//  Created by kimjiwon on 2022/06/15.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(spacing: 30){
            
            Button(
                action: {
                    print("button clicked!")
                
            }, label: {
                Text("탭")
                    .fontWeight(.bold)
            }).buttonStyle(MyButtonStyle(color: Color.blue, type: .tab))
            
            Button(
                action: {
                    print("button clicked!")
                
            }, label: {
                Text("롱클릭")
                    .fontWeight(.bold)
            }).buttonStyle(MyButtonStyle(color: Color.green, type: .long))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
