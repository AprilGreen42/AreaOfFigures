//
//  TriangleView.swift
//  AreaOfFigures
//
//  Created by Дмитрий on 10.02.2024.
//

import SwiftUI

struct TriangleView: View {
    @State var sideA: String = ""
    @State var sideB: String = ""
    @State var sideC: String = ""
    @State private var calculate: Bool = false
    
    func areaOfFigure(a: String, b: String, c: String) -> some View {
        let A: Double? = Double(a) ?? 0
        let B: Double? = Double(b) ?? 0
        let C: Double? = Double(c) ?? 0
        let p: Double? = (A! + B! + C!) / 2
        let p_a: Double = p! - A!
        let p_b: Double = p! - B!
        let p_c: Double = p! - C!
        let temp: Double? = (p! * p_a * p_b * p_c)
        let s: Double? = sqrt(temp!)
        return VStack {
            HStack {
                Image(systemName: "s.square")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text(" = \(s!)")
                    .foregroundStyle(.black)
                    .font(.system(size: 42))
            }
            if ((A! * A! + B! * B! == C! * C! && s != 0) ||
                (C! * C! + B! * B! == A! * A! && s != 0) ||
                (A! * A! + C! * C! == B! * B! && s != 0)) {
                Text("Треульник - прямоугольный")
                    .bold()
                    .font(.title2)
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
                TextField("Сторона C", text: $sideC)
                    .frame(width: 100, height: 50)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
            }
            .padding()
            
            areaOfFigure(a: sideA, b: sideB, c: sideC)
        }
    }
}

#Preview {
    TriangleView()
}
