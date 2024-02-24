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
            Text("1234567890")
                .font(.largeTitle)
                .fontWeight(Font.Weight.bold)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .id("valueOutput")
        }
          
        VStack(alignment: .trailing) {
            HStack() {
                Button(action: {
                }, label: {
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
