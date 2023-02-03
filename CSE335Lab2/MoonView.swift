//
//  MoonView.swift
//  CSE335Lab2
//
//  Created by Arjun Dadhwal on 2/2/23.
//

import SwiftUI

struct MoonView: View {
    // access the "dismiss" function from the NavigationView, when called this
    // function will pop the current view from the navigation stack
    @Environment(\.dismiss) var dismiss
    
    // this variable stores the data received from ContentView
    var dataFromEarth: String
    // this binding allows to send data back to the ContentView
    @Binding var dataMoon: Int
    
    var body: some View {
        VStack{
            Spacer()
            Text(dataFromEarth)
            Spacer()
            Button("Go to Earth") {
                dataMoon = 1
                dismiss()
                    
            }.padding()
             .foregroundColor(.green)
             .cornerRadius(10)
            
            Spacer()
            NavigationLink("Go to Jupiter") {
                    // Pass the state variable "dataFromSecond" as binding to the
                    // SecondView, doing so will allow the ContentView to stay
                    // updated on the changes made to this variable
                    JupiterView(dataFromMoon: "Hello From Second")
            }
            .padding()
            .foregroundColor(.blue)
            .cornerRadius(10)
              
            Spacer()
        }
        .navigationBarHidden(true)
        .navigationTitle("Moon")
     .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            print(dataFromEarth)
            
        }
    }
}


struct MoonView_Previews: PreviewProvider {
    static var previews: some View {
        MoonView(dataFromEarth: "Some string", dataMoon: .constant(1))
    }
}
