//
//  ContentView.swift
//  ComputingAppMogilinski
//
//  Created by AARON MOGILINSKI on 9/2/26.
//

import SwiftUI

struct ContentView: View {
    @State var stateChosen: String = "What State Are You in?"
    @State var givenTax: Double = 0.0
    @State var givenOrder: Double = 0.0
    @FocusState var isFocused: Bool
    
    
    var body: some View {
        VStack {
            Text("Sales Tax Adder")
                .fontDesign(.serif)
                .font(.largeTitle)
            Text("Approximately Accurate:")
                .fontDesign(.serif)
            Text("Based off of the average of state and local taxes")
                .fontDesign(.serif)
                .padding(.bottom, 0)
            Image("usafive")
                .resizable()
                .frame(width: 300, height: 175)
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .padding(.bottom)
                
            Menu(stateChosen){
                
                Button("Deselect"){
                    givenTax = 0.0
                    stateChosen = "What State Are You In?"
                }
                Button("Alabama"){
                    givenTax = 0.0946
                    stateChosen = "Alabama"
                }
                Button("Alaska"){
                    givenTax = 0.0182
                    stateChosen = "Alaska"
                }
                Button("Arizona"){
                    givenTax = 0.0852
                    stateChosen = "Arizona"
                }
                Button("Arkansas"){
                    givenTax = 0.0946
                    stateChosen = "Arkansas"
                }
                Button("California"){
                    givenTax = 0.0899
                    stateChosen = "California"
                }
                Button("Colorado"){
                    givenTax = 0.0789
                    stateChosen = "Colorado"
                }
                Button("Conneticut"){
                    givenTax = 0.0635
                    stateChosen = "Conneticut"
                }
                Button("Delaware"){
                    givenTax = 0.0
                    stateChosen = "Deleware"
                }
                Button("Florida"){
                    givenTax = 0.0698
                    stateChosen = "Florida"
                }
                Button("Georgia"){
                    givenTax = 0.0749
                    stateChosen = "Georgia"
                }
                Button("Hawaii"){
                    givenTax = 0.045
                    stateChosen = "Hawaii"
                }
                Button("Idaho"){
                    givenTax = 0.0603
                    stateChosen = "Idaho"
                }
                Button("Illinois"){
                    givenTax = 0.0896
                    stateChosen = "Illinois"
                }
                Button("Indiana"){
                    givenTax = 0.07
                    stateChosen = "Indiana"
                }
                Button("Iowa"){
                    givenTax = 0.0694
                    stateChosen = "Iowa"
                }
                Button("Kansas"){
                    givenTax = 0.0869
                    stateChosen = "Kansas"
                }
                Button("Kentucky"){
                    givenTax = 0.06
                    stateChosen = "Kentucky"
                }
                Button("Louisiana"){
                    givenTax = 0.1011
                    stateChosen = "Louisiana"
                }
                Button("Maine"){
                    givenTax = 0.055
                    stateChosen = "Maine"
                }
                Button("Maryland"){
                    givenTax = 0.06
                    stateChosen = "Maryland"
                }
                Button("Massachusetts"){
                    givenTax = 0.0625
                    stateChosen = "Massachusetts"
                }
                Button("Michigan"){
                    givenTax = 0.06
                    stateChosen = "Michigan"
                }
                Button("Minnesota"){
                    givenTax = 0.0814
                    stateChosen = "Minnesota"
                }
                Button("Mississippi"){
                    givenTax = 0.0706
                    stateChosen = "Mississippi"
                }
                Button("Missouri"){
                    givenTax = 0.0844
                    stateChosen = "Missouri"
                }
                Button("Montana"){
                    givenTax = 0.0
                    stateChosen = "Montana"
                }
                Button("Nebraska"){
                    givenTax = 0.0698
                    stateChosen = "Nebraska"
                }
                Button("Nevada"){
                    givenTax = 0.0824
                    stateChosen = "Nevada"
                }
                Button("New Hampshire"){
                    givenTax = 0.0
                    stateChosen = "New Hampshire"
                }
                Button("New Jersey"){
                    givenTax = 0.066
                    stateChosen = "New Jersey"
                }
                Button("New Mexico"){
                    givenTax = 0.0767
                    stateChosen = "New Mexico"
                }
                Button("New York"){
                    givenTax = 0.0854
                    stateChosen = "New York"
                }
                Button("North Carolina"){
                    givenTax = 0.07
                    stateChosen = "North Carolina"
                }
                Button("North Dakota"){
                    givenTax = 0.0709
                    stateChosen = "North Dakota"
                }
                Button("Ohio"){
                    givenTax = 0.0729
                    stateChosen = "Ohio"
                }
                Button("Oklahoma"){
                    givenTax = 0.0906
                    stateChosen = "Oklahoma"
                }
                Button("Oregon"){
                    givenTax = 0.0
                    stateChosen = "Oregon"
                }
                Button("Pennsylvania"){
                    givenTax = 0.0634
                    stateChosen = "Pennsylvania"
                }
                Button("Rhode Island"){
                    givenTax = 0.07
                    stateChosen = "Rhode Island"
                }
                Button("South Carolina"){
                    givenTax = 0.0749
                    stateChosen = "South Carolina"
                }
                Button("South Dakota"){
                    givenTax = 0.0611
                    stateChosen = "South Dakota"
                }
                Button("Tennessee"){
                    givenTax = 0.0961
                    stateChosen = "Tennessee"
                }
                Button("Texas"){
                    givenTax = 0.082
                    stateChosen = "Texas"
                }
                Button("Utah"){
                    givenTax = 0.0742
                    stateChosen = "Utah"
                }
                Button("Vermont"){
                    givenTax = 0.0639
                    stateChosen = "Vermont"
                }
                Button("Virginia"){
                    givenTax = 0.0577
                    stateChosen = "Virginia"
                }
                Button("Washington"){
                    givenTax = 0.0951
                    stateChosen = "Washington"
                }
                Button("West Virginia"){
                    givenTax = 0.0659
                    stateChosen = "West Virginia"
                }
                Button("Wisconsin"){
                    givenTax = 0.0572
                    stateChosen = "Wisconsin"
                }
                Button("Wyoming"){
                    givenTax = 0.0556
                    stateChosen = "Wyoming"
                }
            }
            .buttonStyle(.borderedProminent)
            .background(.blue)
            .foregroundStyle(.white)
            .clipShape(RoundedRectangle(cornerRadius: 25))
            .padding(.bottom, 50)
                
            
        }
        .padding()
    }
    func calTax(){
        
    }
}

#Preview {
    ContentView()
}
