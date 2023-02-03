//
//  ThirdView.swift
//  CSE335Lab2
//
//  Created by Arjun Dadhwal on 2/2/23.
//

import SwiftUI

struct JupiterView: View {
    var dataFromMoon: String
    var body: some View {
        Text(dataFromMoon)
    }
}

struct JupiterView_Previews: PreviewProvider {
    static var previews: some View {
        JupiterView(dataFromMoon: "")
    }
}
