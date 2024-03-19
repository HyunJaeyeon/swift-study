//
//  ContentView.swift
//  Calculator
//
//  Created by Hyun Jaeyeon on 3/19/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var totalNumber: String = "0"
    
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
                HStack {
                    Button{
                        totalNumber = "0"
                    }label: {
                        Text("C")
                            .frame(width: 80,
                                   height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                        .font(.system(size: 33))}
                    Text("/")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size: 33))
                    Text("%")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size: 33))
                    Text("/")
                        .frame(width: 80,
                               height: 80)
                        .background(Color("NumberButton"))
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size: 33))
                }
                HStack {
                    Button{
                        if totalNumber == "0"{
                            totalNumber = "7"
                        } else {
                            totalNumber += "7"
                        }
                    } label: {
                        Text("7")
                            .frame(width: 80,
                                   height: 80)
                            .background(.gray)
                            .cornerRadius(40)
                            .foregroundColor(.white)
                            .font(.system(size: 33))
                    }
                    
                    Text("8")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size: 33))
                    Text("9")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size: 33))
                    Text("x")
                        .frame(width: 80,
                               height: 80)
                        .background(.orange)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size: 33))
                }
                HStack {
                    Text("4")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size: 33))
                    Text("5")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size: 33))
                    Text("6")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size: 33))
                    Text("-")
                        .frame(width: 80,
                               height: 80)
                        .background(.orange)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size: 33))
                }
                HStack {
                    Text("1")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size: 33))
                    Text("2")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size: 33))
                    Text("3")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size: 33))
                    Text("+")
                        .frame(width: 80,
                               height: 80)
                        .background(.orange)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size: 33))
                }
                HStack {
                    Text("0")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size: 33))
                    Text("0")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size: 33))
                    Text(".")
                        .frame(width: 80,
                               height: 80)
                        .background(.gray)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size: 33))
                    Text("=")
                        .frame(width: 80,
                               height: 80)
                        .background(.orange)
                        .cornerRadius(40)
                        .foregroundColor(.white)
                        .font(.system(size: 33))
                }
            }.padding()
        }
        
    }
}

#Preview {
    ContentView()
}
