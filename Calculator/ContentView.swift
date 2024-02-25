//
//  ContentView.swift
//  Calculator
//
//  Created by Cameron Small on 2/21/24.
//

import SwiftUI

struct ContentView: View {
    
    // data class for storing and performing calculator operations
    var data = CalculatorData()
    
    @State var displayText = "0"
    
    var body: some View {
        VStack(alignment: .trailing) {
            Text(displayText)
                .font(.largeTitle)
                .fontWeight(Font.Weight.bold)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .id("valueOutput")
                .onAppear(perform: {
                    self.displayText = self.data.getDisplayValue()
                })
        }
          
        VStack(alignment: .trailing) {
            HStack() {
                Button(action: {
                    self.data.onClearClicked()
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("AC")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                .id("acButton")
                
                Button(action: {
                    self.data.onOperatorClicked(.swapSign)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("+/-")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onOperatorClicked(.percent)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("%")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onOperatorClicked(.divide)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("/")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
            }
            
            HStack {
                Button(action: {
                    self.data.onNumberClicked(7)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("7")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onNumberClicked(8)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("8")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onNumberClicked(9)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("9")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onOperatorClicked(.multiply)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("x")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
            }
            
            HStack {
                Button(action: {
                    self.data.onNumberClicked(4)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("4")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onNumberClicked(5)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("5")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onNumberClicked(6)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("6")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onOperatorClicked(.minus)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("-")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
            }
            
            HStack {
                Button(action: {
                    self.data.onNumberClicked(1)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("1")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onNumberClicked(2)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("2")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onNumberClicked(3)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("3")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onOperatorClicked(.plus)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
            }
            
            HStack {
                Button(action: {
                    self.data.onNumberClicked(0)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("0")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onOperatorClicked(.decimal)
                }, label: {
                    Text(".")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onOperatorClicked(.equals)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
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
