
//
//  MyButtonSytle.swift
//  ButtonStyle_swiftUI
//
//  Created by kimjiwon on 2022/06/15.
//

import SwiftUI


struct MyRotateButtonStyle : ButtonStyle {
    
    var color : Color
    var type : ButtonType
    
    func makeBody(configuration: Configuration) -> some View {
        
        configuration
            .label
            .font(.system(size: 30))
            .foregroundColor(Color.white)
            .padding()
            .background(color)
            .cornerRadius(20)
            .rotationEffect(configuration.isPressed ?
                .degrees(720) : .degrees(0))
    
        
        
        
    }
}

struct MyRotateButtonStyle_previews: PreviewProvider {
    static var previews: some View {
        Button(action: {
            print("button clicked!")
        }, label: {
            Text("게임시작!!")
            
        }).buttonStyle(MyRotateButtonStyle(color: Color.blue, type: .tab))
    }
}

