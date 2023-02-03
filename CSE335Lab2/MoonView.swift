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
    var weightEarth: Float
    var weightMoon: Float { (weightEarth/9.81) * 1.622 }
    // this binding allows to send data back to the ContentView
    @Binding var dataMoon: Int
    @Binding var rootActive: Bool

    
    @State var comeToMoon: Int = 0;
    

    
    var body: some View {
        VStack{
            
            VStack {
                Text("You are on the moon");
                if (comeToMoon == 2)
                {
                    Text("Coming from Jupiter")
                }
                Image("Moon").resizable().aspectRatio(contentMode: .fit).frame(height: 150)
            }

            VStack {
                Text("Your weight on Earth is... \(weightEarth)")
                Spacer()
                Text("Your weight on Moon is... \(weightMoon)")
                Spacer()
            }
            
            VStack {
                Text("I feel much lighter !");
                Spacer()
                NavigationLink("Go to Jupiter", destination:                     JupiterView(weightEarth: weightEarth, weightMoon: weightMoon, dataJupiter: $comeToMoon, rootActive: $rootActive).padding()
                    .foregroundColor(.blue)
                    .cornerRadius(10)
)

                
                /*NavigationLink("Go to Jupiter") {
                    JupiterView(weightEarth: weightEarth, weightMoon: weightMoon, dataJupiter: $comeToMoon)
                }
                .padding()
                .foregroundColor(.blue)
                .cornerRadius(10)
                 */
                
                Button("Go to Earth") {
                    dataMoon = 1
                    dismiss()
                    
                }.padding()
                    .foregroundColor(.blue)
                    .cornerRadius(10)
            }
              
        }
        .navigationBarHidden(true)
        .navigationTitle("Moon")
     .navigationBarTitleDisplayMode(.inline)
        .onAppear {
            print(weightEarth)
            
        }
    }
}




struct MoonView_Previews: PreviewProvider {
    static var previews: some View {
        MoonView(weightEarth:1.0, dataMoon: .constant(1), rootActive: .constant(false))
    }
}
