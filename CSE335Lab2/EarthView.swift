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
    @State var weightOnEarth: String = "";
    @State var comingFrom: Int = 0;
    
    var body: some View {
        // NOTE: to navigate between views, the root view needs to be embedded
        // inside a NavigationView
        
        NavigationView{
            VStack(spacing:75){
                VStack(spacing:30){
                    Text("Welcome to Space Walk App")
                    
                    Text("You are on earth now")
                    if (comingFrom == 1)
                    {
                    Text("Coming from the moon")

                    }
                    else if (comingFrom == 2)
                    {
                    Text("Coming from Jupiter")
                    }
                }
                HStack{
                    Text("Enter your weight: ");
                    TextField("", text: $weightOnEarth).keyboardType(.decimalPad) .textFieldStyle(.roundedBorder);
                }
                VStack {
                    Spacer()
                    Image("Earth").resizable().aspectRatio(contentMode: .fit).frame(height: 150)
                    Spacer()
                    NavigationLink("Go to Moon") {
                        MoonView(
                            dataFromEarth: "Hello from ContentView",
                            dataMoon: $dataFromMoon
                            // Binding
                            
                        )
                    }.buttonStyle(.borderedProminent)
                    .navigationTitle("ContentView")
                    .navigationBarTitleDisplayMode(.inline)
                    .onChange(of: dataFromMoon) { data in
                        print(data)
                        dataFromMoon = ""
                    }
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

