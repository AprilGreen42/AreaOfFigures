//
//  RectangleView.swift
//  AreaOfFigures
//
//  Created by Дмитрий on 10.02.2024.
//

import SwiftUI

struct RectangleView: View {
    @State private var sideA: String = ""
    @State private var sideB: String = ""
    func areaOfFigure(a: String, b: String) -> some View {
        let A: Double? = Double(a) ?? 0
        let B: Double? = Double(b) ?? 0
        return VStack {
            HStack {
                Image(systemName: "s.square")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text(" = \(A! * B!)")
                    .foregroundStyle(.black)
                    .font(.system(size: 42))
            }
        }
    }
    var body: some View {
        VStack {
            HStack {
                TextField("Сторона A", text: $sideA)
                    .frame(width: 100, height: 50)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                TextField("Сторона B", text: $sideB)
                    .frame(width: 100, height: 50)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
            }
            .padding()
            
            areaOfFigure(a: sideA, b: sideB)
        }
    }
}

#Preview {
    RectangleView()
}
