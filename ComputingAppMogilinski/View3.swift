//
//  View3.swift
//  ComputingAppMogilinski
//
//  Created by AARON MOGILINSKI on 9/9/26.
//

import SwiftUI

struct View3: View {
    
    @FocusState var focussy: Bool
    @State var namery = ""
    @State var showAlerty = false
    @State var howMuchWeGiving = ""
    @State var tip2 = 0.0
    @State var namedy = 0.0
    
    var body: some View {
        VStack{
        Text("Tip Calculator")
            .font(.largeTitle)
            .fontDesign(.serif)
        
        TextField("Total Bill", text: $namery)
            .focused($focussy)
            .padding(.leading, 173)
            
            TextField("Tip Percentage?", text: $howMuchWeGiving)
                .focused($focussy)
                .padding(.leading, 143)
                .padding(.bottom, 20)
            
        Button("Calculate Tip"){
            
            guard let a = Double(howMuchWeGiving) else{
                showAlerty.toggle()
                return
            }
            tip2 = a
            
            
            guard let b = Double(namery) else{
                showAlerty.toggle()
                return
            }
            namedy = b
            calcy()
        }
        .padding(.bottom, 20)
            Text("You should tip about \(namedy)")
    }
    }
    func tippy(){
        tip2 = tip2/100
    }
    func calcy(){
        tippy()
        namedy = (namedy*tip2)
    }
    
    
}

#Preview {
    View3()
}
