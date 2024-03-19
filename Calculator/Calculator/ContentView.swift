//
//  ContentView.swift
//  Calculator
//
//  Created by Hyun Jaeyeon on 3/19/24.
//

import SwiftUI

enum ButtonType: String {
    case first, second, third, fourth, fifth, sixth, seventh, eighth, nineth, zero
    case comma, equal, plus, minus, multiply, divide
    case percent, opposite, clear
    
    var buttonDisplayName: String {
        switch self {
            case .first:
                return "1"
            case .second:
                return "2"
            case .third:
                return "3"
            case .fourth:
                return "4"
            case .fifth:
                return "5"
            case .sixth:
                return "6"
            case .seventh:
                return "7"
            case .eighth:
                return "8"
            case .nineth:
                return "9"
        case .zero:
            return "0"
        case .comma:
               return "."
           case .equal:
               return "="
           case .plus:
               return "+"
           case .minus:
               return "-"
           case .multiply:
               return "*"
           case .divide:
               return "/"
           case .percent:
               return "%"
           case .opposite:
               return "±"
           case .clear:
               return "C"
        }
    }
}
struct ContentView: View {
    
    @State private var totalNumber: String = "0"
    
    private let buttonData: [[ButtonType]] = [
        [.clear, .opposite,.percent, .divide],
        [.seventh, .eighth, .nineth, .multiply],
        [.fourth, .fifth, .sixth, .minus],
        [.first, .second, .third, .plus],
        [.zero, .zero, .comma, .equal]
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
                                    totalNumber = "7"
                                } else {
                                    totalNumber += "7"
                                }
                            } label: {
                                Text(item.buttonDisplayName)
                                    .frame(width: 80,
                                           height: 80)
                                    .background(Color.gray)
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

