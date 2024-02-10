//
//  RhombusView.swift
//  AreaOfFigures
//
//  Created by Дмитрий on 11.02.2024.
//

import SwiftUI

struct RhombusView: View {
    @State private var diagonalFirst: String = ""
    @State private var diagonalSecond: String = ""
    
    func areaOfFigure(d1: String, d2: String) -> some View {
        let D1: Double? = Double(d1) ?? 0
        let D2: Double? = Double(d2) ?? 0
        return VStack {
            HStack {
                Image(systemName: "s.square")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text(" = \((D1! * D2!) / 2)")
                    .foregroundStyle(.black)
                    .font(.system(size: 42))
            }
        }
    }
    var body: some View {
        VStack {
            HStack {
                TextField("Диагональ 1", text: $diagonalFirst)
                    .frame(width: 120, height: 50)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                TextField("Диагональ 2", text: $diagonalSecond)
                    .frame(width: 120, height: 50)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
            }
            areaOfFigure(d1: diagonalFirst, d2: diagonalSecond)
        }
    }
}

#Preview {
    RhombusView()
}
