//
//  ContentView.swift
//  Calculator
//
//  Created by Cameron Small on 2/21/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .trailing) {
            TextField("1234567890", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .fontWeight(Font.Weight.bold)
                .font(Font.largeTitle)
                .frame(maxWidth: .infinity, alignment: .center)
                
            HStack() {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("AC")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                .id("acButton")
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("+/-")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("%")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("/")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
            }
            
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("7")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("8")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("9")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("x")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
            }
            
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("4")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("5")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("6")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("-")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
            }
            
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("1")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("2")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("3")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
            }
            
            HStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("0")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text(".")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                    Text("=")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
            }
            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
