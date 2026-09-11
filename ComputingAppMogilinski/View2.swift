//
//  View2.swift
//  ComputingAppMogilinski
//
//  Created by AARON MOGILINSKI on 9/8/26.
//

import SwiftUI

struct View2: View {
    
    @State var namer = ""
    @FocusState var isFocussed: Bool
    @State var fakelate = "..."
    
    var body: some View {
        Text("NAME THE STATE GAME")
            .font(.largeTitle)
            .fontDesign(.serif)
        Image("nebraska")
            .resizable()
            .frame(width: 250, height: 300)
            .clipShape(RoundedRectangle(cornerRadius: 45))
        Text("What state is this?")
            .fontDesign(.serif)
        TextField("Write the state name here", text: $namer)
            .focused($isFocussed)
            .padding(.leading, 103)
        Button("Are you right?"){
            if(namer.lowercased() == "nebraska"){
                fakelate = "YOU WIN!!!!"
            }
        
            namer = ""
        }
        .fontDesign(.serif)
        .padding(.bottom, 10)
        Text(fakelate)
            .font(.largeTitle)
            .fontDesign(.serif)
    }
}

#Preview {
    View2()
}
