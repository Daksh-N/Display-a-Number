//
//  ContentView.swift
//  Display a Number
//
//  Created by Daksh Nakra on 9/9/22.
//

import SwiftUI

struct ContentView: View {
    @State private var numberTextField = ""
    @State private var imageName = ""
    var body: some View {
        VStack {
            Text("Display a Number")
                .font(.title)
                .fontWeight(.bold)
                .padding()
            TextField("Enter a number", text: $numberTextField)
                .onChange(of: numberTextField, perform: { newValue in
                    if let value = Int(newValue) {
                        if value % 2 == 0 {
                            imageName = "Even"
                        }
                        else {
                            imageName = "Odd"
                        }
                    }
                    else {
                        numberTextField = ""
                        imageName = ""
                    }
                })
                .font(.title)
                .multilineTextAlignment(.center)
            Text(numberTextField)
                .font(.title)
                .fontWeight(.bold)
                .padding()
            Image(imageName)
                .padding()
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
