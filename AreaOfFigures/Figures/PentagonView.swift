//
//  PentagonView.swift
//  AreaOfFigures
//
//  Created by Дмитрий on 11.02.2024.
//

import SwiftUI

struct PentagonView: View {
    @State private var apofema: String = ""
    @State private var side: String = ""
    
    func areaOfFigure(apof: String, sideOfFigure: String) -> some View {
        let ap: Double? = Double(apof) ?? 0
        let sideA: Double? = Double(sideOfFigure) ?? 0
        let area: Double? = ((ap! * sideA!) / 2) * 5
        return VStack {
            HStack {
                Image(systemName: "s.square")
                    .resizable()
                    .frame(width: 30, height: 30)
                Text(" = \(area!)")
                    .font(.system(size: 42))
            }
        }
    }
    var body: some View {
        VStack {
            HStack {
                TextField("Сторона", text: $apofema)
                    .frame(width: 100, height: 50)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
                TextField("Апофема", text: $side)
                    .frame(width: 100, height: 50)
                    .textFieldStyle(.roundedBorder)
                    .multilineTextAlignment(.center)
            }
            areaOfFigure(apof: apofema, sideOfFigure: side)
        }
    }
}

#Preview {
    PentagonView()
}
