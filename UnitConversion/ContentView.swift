//
//  ContentView.swift
//  UnitConversion
//
//  Created by Barr Mohammed on 8/16/25.
//

import SwiftUI

struct ContentView: View {
    @State private var inputValue = 0.0
    @State private var outputValue = 0.0
    @State private var inputUnitPicked = "meters"
    @State private var outputUnitPicked = "yard"
    
    let inputUnits = ["meters", "kilometers", "feet", "yard", "miles"]
    let outputUnits = ["meters", "kilometers", "feet", "yard", "miles"]
    
    var body: some View {
        
        NavigationStack {
            Form {
                Section(header:Text("Enter starting length value and units")){
                    TextField("Unit input", value: $inputValue, format: .number)
                    Picker("Choose units", selection: $inputUnitPicked) {
                        ForEach(inputUnits, id: \.self) {
                            Text($0)
                        }
                    }
                }
                
                Section(header:Text("Choose conversion units")) {
                    Picker("Choose units", selection: $outputUnitPicked) {
                        ForEach(outputUnits, id: \.self) {
                            Text($0)
                        }
                    }
                }
                
                Section(header:Text("Conversion results")) {
                    TextField("Results", value: $outputValue, format: .number)
                }
            }
            .navigationTitle("Unit Conversion")
        }
        
        
    }
}

#Preview {
    ContentView()
}
