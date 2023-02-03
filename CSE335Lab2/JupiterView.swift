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

    
    var body: some View {
        Text("\(weightEarth)");
        Text("\(weightMoon)");
        Text("\(weightJupiter)");
    }
}

struct JupiterView_Previews: PreviewProvider {
    static var previews: some View {
        JupiterView(weightEarth: 0.0, weightMoon: 0.0, dataJupiter: .constant(2))
    }
}
