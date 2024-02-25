//
//  ContentView.swift
//  Calculator
//
//  Created by Cameron Small on 2/21/24.
//

import SwiftUI

struct ContentView: View {
    
    // 
    var data = CalculatorData()
    
    var body: some View {
        VStack(alignment: .trailing) {
            Text("\(data.calculatedValue)")
                .font(.largeTitle)
                .fontWeight(Font.Weight.bold)
                .frame(maxWidth: .infinity, alignment: .trailing)
                .id("valueOutput")
        }
          
        VStack(alignment: .trailing) {
            HStack() {
                Button(action: {
                    self.data.onClearClicked()
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
                }, label: {
                    Text("+/-")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                .cornerRadius(10)
                
                Button(action: {
                    self.data.onOperatorClicked(.percent)
                }, label: {
                    Text("%")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onOperatorClicked(.divide)
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
                }, label: {
                    Text("7")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onNumberClicked(8)
                }, label: {
                    Text("8")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onNumberClicked(9)
                }, label: {
                    Text("9")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onOperatorClicked(.multiply)
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
                }, label: {
                    Text("4")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onNumberClicked(5)
                }, label: {
                    Text("5")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onNumberClicked(6)
                }, label: {
                    Text("6")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onOperatorClicked(.minus)
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
                }, label: {
                    Text("1")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onNumberClicked(2)
                }, label: {
                    Text("2")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onNumberClicked(3)
                }, label: {
                    Text("3")
                        .font(.title)
                        .fontWeight(.bold)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                
                Button(action: {
                    self.data.onOperatorClicked(.plus)
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
