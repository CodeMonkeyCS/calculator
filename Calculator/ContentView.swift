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
                .font(.system(size: 72))
                .multilineTextAlignment(.trailing)
                .frame(width: UIScreen.main.bounds.width * 0.9, height: UIScreen.main.bounds.height * 0.2, alignment: .bottomTrailing)
                .padding(5)
                .onAppear(perform: {
                    self.displayText = self.data.getDisplayValue()
                })
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.2, alignment: .center)
          
        VStack(alignment: .center) {
            HStack() {
                Button(action: {
                    self.data.onClearClicked()
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("AC")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 40.0, height: 50.0)
                })
                .buttonStyle(.borderedProminent)
                .tint(.orange)
                .controlSize(.extraLarge)
                .cornerRadius(100)
                
                Button(action: {
                    self.data.onOperatorClicked(.swapSign)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("+/-")
                        .font(.headline)
                        .fontWeight(.bold)
                        .frame(width: 40.0, height: 50.0)
                })
                .buttonStyle(.borderedProminent)
                .tint(.orange)
                .controlSize(.extraLarge)
                .cornerRadius(100)
                
                Button(action: {
                    self.data.onOperatorClicked(.percent)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("%")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 40.0, height: 50.0)
                })
                .buttonStyle(.borderedProminent)
                .tint(.orange)
                .controlSize(.extraLarge)
                .cornerRadius(100)
                
                Button(action: {
                    self.data.onOperatorClicked(.divide)
                }, label: {
                    Text("/")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 40.0, height: 50.0)
                })
                .buttonStyle(.borderedProminent)
                .tint(.teal)
                .controlSize(.extraLarge)
                .cornerRadius(100)
            }
            
            HStack {
                Button(action: {
                    self.data.onNumberClicked(7)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("7")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 40.0, height: 50.0)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                .controlSize(.extraLarge)
                .cornerRadius(100)
                
                Button(action: {
                    self.data.onNumberClicked(8)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("8")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 40.0, height: 50.0)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                .controlSize(.extraLarge)
                .cornerRadius(100)
                
                Button(action: {
                    self.data.onNumberClicked(9)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("9")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 40.0, height: 50.0)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                .controlSize(.extraLarge)
                .cornerRadius(100)
                
                Button(action: {
                    self.data.onOperatorClicked(.multiply)
                }, label: {
                    Text("x")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 40.0, height: 50.0)
                })
                .buttonStyle(.borderedProminent)
                .tint(.teal)
                .controlSize(.extraLarge)
                .cornerRadius(100)
            }
            
            HStack {
                Button(action: {
                    self.data.onNumberClicked(4)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("4")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 40.0, height: 50.0)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                .controlSize(.extraLarge)
                .cornerRadius(100)
                
                Button(action: {
                    self.data.onNumberClicked(5)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("5")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 40.0, height: 50.0)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                .controlSize(.extraLarge)
                .cornerRadius(100)
                
                Button(action: {
                    self.data.onNumberClicked(6)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("6")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 40.0, height: 50.0)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                .controlSize(.extraLarge)
                .cornerRadius(100)
                
                Button(action: {
                    self.data.onOperatorClicked(.minus)
                }, label: {
                    Text("-")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 40.0, height: 50.0)
                })
                .buttonStyle(.borderedProminent)
                .tint(.teal)
                .controlSize(.extraLarge)
                .cornerRadius(100)
            }
            
            HStack {
                Button(action: {
                    self.data.onNumberClicked(1)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("1")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 40.0, height: 50.0)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                .controlSize(.extraLarge)
                .cornerRadius(100)
                
                Button(action: {
                    self.data.onNumberClicked(2)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("2")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 40.0, height: 50.0)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                .controlSize(.extraLarge)
                .cornerRadius(100)
                
                Button(action: {
                    self.data.onNumberClicked(3)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("3")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 40.0, height: 50.0)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                .controlSize(.extraLarge)
                .cornerRadius(100)
                
                Button(action: {
                    self.data.onOperatorClicked(.plus)
                }, label: {
                    Text("+")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 40.0, height: 50.0)
                })
                .buttonStyle(.borderedProminent)
                .tint(.teal)
                .controlSize(.extraLarge)
                .cornerRadius(100)
            }
            
            HStack() {
                Button(action: {
                    self.data.onNumberClicked(0)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("0")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 130.0, height: 50.0)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                .controlSize(.extraLarge)
                .cornerRadius(100)
                
                Button(action: {
                    self.data.onOperatorClicked(.decimal)
                }, label: {
                    Text(".")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 40.0, height: 50.0)
                })
                .buttonStyle(.borderedProminent)
                .tint(.gray)
                .controlSize(.extraLarge)
                .cornerRadius(100)
                
                Button(action: {
                    self.data.onOperatorClicked(.equals)
                    self.displayText = self.data.getDisplayValue()
                }, label: {
                    Text("=")
                        .font(.title)
                        .fontWeight(.bold)
                        .frame(width: 40.0, height: 50.0)
                })
                .buttonStyle(.borderedProminent)
                .tint(.teal)
                .controlSize(.extraLarge)
                .cornerRadius(100)
            }
            .frame(width: UIScreen.main.bounds.width)
        }
        .frame(width: UIScreen.main.bounds.width, height: UIScreen.main.bounds.height * 0.55)
    }
}

#Preview {
    ContentView()
}
