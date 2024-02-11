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
        let sideFirst: Double? = Double(a) ?? 0
        let sideSecond: Double? = Double(b) ?? 0
        let sideThird: Double? = Double(c) ?? 0
        let per: Double? = (sideFirst! + sideSecond! + sideThird!) / 2
        let per_a: Double = per! - sideFirst!
        let per_b: Double = per! - sideSecond!
        let per_c: Double = per! - sideThird!
        let temp: Double? = (per! * per_a * per_b * per_c)
        let area: Double? = sqrt(temp!)
        return VStack {
            HStack {
                Image(systemName: "s.square")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text(" = \(area!)")
                    .font(.system(size: 42))
            }
            if ((sideFirst! * sideFirst! + sideSecond! * sideSecond! == sideThird! * sideThird! && area != 0) ||
                (sideThird! * sideThird! + sideSecond! * sideSecond! == sideFirst! * sideFirst! && area != 0) ||
                (sideFirst! * sideFirst! + sideThird! * sideThird! == sideSecond! * sideSecond! && area != 0)) {
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
