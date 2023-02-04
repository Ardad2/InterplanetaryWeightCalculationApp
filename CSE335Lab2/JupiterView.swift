//
//  ThirdView.swift
//  CSE335Lab2
//
//  Created by Arjun Dadhwal on 2/2/23.
//

import SwiftUI

struct JupiterView: View {
    
    @Environment(\.dismiss) var dismiss
    
    var weightEarth: Float
    var weightMoon: Float
    var weightJupiter: Float { (weightEarth/9.81) * 24.79 }
    
    @Binding var dataJupiter: Int
    
    @State var comeToJupiter: Int = 0
    
    @Binding var rootActive: Bool

    @Binding var earthToJupiter: Bool

    
    var body: some View {
        
        
        VStack{
            VStack {
                Text("You are on the jupiter").foregroundColor(.black);
                Image("Jupiter").resizable().aspectRatio(contentMode: .fit).frame(height: 150)
            }
            
            
            VStack(spacing:50) {
                Text("Your weight on Earth is... \(weightEarth) lbs").foregroundColor(.black);
                Text("Your weight on Moon is... \(weightMoon) lbs").foregroundColor(.black);
                Text("Your weight on Jupiter is... \(weightJupiter) lbs").foregroundColor(.black);
            }
            Spacer()
            
            VStack(spacing:50) {
                Text("I feel much heavier !").foregroundColor(.black)
                Spacer()
                Button("Go to the Moon")
                {
                    dataJupiter = 2
                    dismiss()
                }.padding().foregroundColor(.blue).cornerRadius(10)
                Button("Go to Earth")
                {
                    dataJupiter = 2
                    earthToJupiter = true
                    rootActive = false

                }.padding().foregroundColor(.blue).cornerRadius(10)
            }
        }.navigationBarHidden(true)
            .navigationTitle("Jupiter")
            .navigationBarTitleDisplayMode(.inline)
    }
    
    struct JupiterView_Previews: PreviewProvider {
        static var previews: some View {
            JupiterView(weightEarth: 0.0, weightMoon: 0.0, dataJupiter: .constant(2), rootActive: .constant(false), earthToJupiter: .constant(false));
        }
    }
}

