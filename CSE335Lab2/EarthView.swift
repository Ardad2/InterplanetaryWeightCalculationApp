//
//  EarthView.swift
//  CSE335Lab2
//
//  Created by Arjun Dadhwal on 2/2/23.
//

import SwiftUI


struct EarthView: View {
    // This variable is responsible for tracking the data sent from SecondView
    @State private var dataFromMoon = "";
    @State var weightEarthString: String = "";
    private var weightEarth: Float { (Float(weightEarthString) ?? 0) }
    
    @State var comeToEarth: Int = 0;
    
    var body: some View {
        // NOTE: to navigate between views, the root view needs to be embedded
        // inside a NavigationView
        
        NavigationView{
            VStack(spacing:75){
                VStack(spacing:30){
                    Text("Welcome to Space Walk App")
                    
                    Text("You are on earth now")
                    if (comeToEarth == 1)
                    {
                    Text("Coming from the moon")

                    }
                    else if (comeToEarth == 2)
                    {
                    Text("Coming from Jupiter")
                    }
                }
                HStack{
                    Text("Enter your weight: ");
                    TextField("", text: $weightEarthString).keyboardType(.decimalPad) .textFieldStyle(.roundedBorder);
                }
                VStack {
                    Spacer()
                    Image("Earth").resizable().aspectRatio(contentMode: .fit).frame(height: 150)
                    Spacer()
                    NavigationLink("Go to Moon") {
                        MoonView(
                            weightEarth: self.weightEarth,
                            dataMoon: $comeToEarth
                            // Binding
                            
                        )
                    }.buttonStyle(.borderedProminent)
                    .navigationTitle("ContentView")
                    .navigationBarTitleDisplayMode(.inline)
    
                }
                .navigationBarHidden(true)
    
            }.frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: .infinity, alignment: .topLeading)

        }
    }
}

struct EarthView_Previews: PreviewProvider {
    static var previews: some View {
        EarthView()
    }
}

