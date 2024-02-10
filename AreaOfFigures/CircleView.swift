//
//  CircleView.swift
//  AreaOfFigures
//
//  Created by Дмитрий on 10.02.2024.
//

import SwiftUI

struct CircleView: View {
    @State private var radius: String = ""
    func areaOfFigure(r: String) -> some View {
        let R: Double? = Double(r) ?? 0
        return VStack {
            HStack {
                Image(systemName: "s.square")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text(" = \(3.14 * R! * R!)")
                    .foregroundStyle(.black)
                    .font(.system(size: 42))
            }
        }
    }
    var body: some View {
        TextField("Радиус", text: $radius)
            .frame(width: 100, height: 50)
            .textFieldStyle(.roundedBorder)
            .multilineTextAlignment(.center)
        areaOfFigure(r: radius)
    }
}

#Preview {
    CircleView()
}
