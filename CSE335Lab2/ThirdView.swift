//
//  ThirdView.swift
//  CSE335Lab2
//
//  Created by Arjun Dadhwal on 2/2/23.
//

import SwiftUI

struct ThirdView: View {
    var dataFrom_Second: String
    var body: some View {
        Text(dataFrom_Second)
    }
}

struct ThirdView_Previews: PreviewProvider {
    static var previews: some View {
        ThirdView(dataFrom_Second: "")
    }
}
