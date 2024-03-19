//
//  ContentView.swift
//  Calculator
//
//  Created by Hyun Jaeyeon on 3/19/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var totalNumber: String = "0"
    
    private let buttonData: [[String]] = [
        ["C", "/", "%", "/"],
        ["7", "8", "9", "X"],
        ["4", "5", "6", "-"],
        ["1", "2", "3", "+"],
        ["0", "0", ".", "="]
    ]
    
    var body: some View {
        ZStack{
            Color.black.ignoresSafeArea()
            
            VStack{
                Spacer()
                HStack{
                    Spacer()
                    HStack{
                        Spacer()
                        Text(totalNumber)
                            .padding()
                            .foregroundColor(.white)
                            .font(.system(size: 73))
                    }
                }
                
                ForEach(buttonData, id: \.self){ line in
                    HStack {
                        ForEach(line, id: \.self){ item in
                            Button{
                                if totalNumber == "0"{
                                    totalNumber = item
                                } else {
                                    totalNumber += item
                                }
                            } label: {
                                Text(item)
                                    .frame(width: 80,
                                           height: 80)
                                    .background(.gray)
                                    .cornerRadius(40)
                                    .foregroundColor(.white)
                                    .font(.system(size: 33))
                            }
                        }
                    }
                }
            }
        }
    }
}
    #Preview {
        ContentView()
    }

