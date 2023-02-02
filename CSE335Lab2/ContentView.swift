//
//  ContentView.swift
//  CSE335Lab2
//
//  Created by Arjun Dadhwal on 2/2/23.
//

import SwiftUI

struct ContentView: View {
    // This variable is responsible for tracking the data sent from SecondView
    @State private var dataFromSecond = "";
    
    var body: some View {
        // NOTE: to navigate between views, the root view needs to be embedded
        // inside a NavigationView
        NavigationView {
            NavigationLink("Go to SecondView") {
                // Pass the state variable "dataFromSecond" as binding to the
                // SecondView, doing so will allow the ContentView to stay
                // updated on the changes made to this variable
                SecondView(
                dataFromFirst: "Hello from ContentView",
                dataSecond: $dataFromSecond
                // Binding
                   
                )
            }
            .navigationTitle("ContentView")
            .navigationBarTitleDisplayMode(.inline)
            // the onChange view modifier will trigger a callback as soon as it
            // detects a value change in the state variable "dataFromSecond"
            // NOTE: if the oldValue == newValue, the callback will not get
            // triggered
            .onChange(of: dataFromSecond) { data in
                print(data)
                dataFromSecond = ""
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

