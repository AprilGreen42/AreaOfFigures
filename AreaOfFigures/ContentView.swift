//
//  ContentView.swift
//  AreaOfFigures
//
//  Created by Дмитрий on 09.02.2024.
//

import SwiftUI


struct ContentView: View {
    @State private var selectedFigure: Figure = .triangle
    @State private var text: String = ""
    
    func choiceFigure(figure: Figure) -> some View {
        switch figure {
        case .triangle:
            return AnyView(TriangleView())
        case .rectangle:
            return AnyView(RectangleView())
        case .circle:
            return AnyView(CircleView())
        case .rhombus:
            return AnyView(RhombusView())
        case .pentagon:
            return AnyView(PentagonView())
        }
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Picker("Figure", selection: $selectedFigure, content: {
                    ForEach(Figure.allCases) { fig in
                        Text(fig.rawValue.capitalized)
                    }
                })
                .padding()
                Image(systemName: selectedFigure.rawValue)
                    .resizable()
                    .frame(width: 150, height: 150)
                choiceFigure(figure: selectedFigure)
                Spacer()
                    .padding()
            }
            .navigationTitle("Площадь фигуры")
        }
    }
}

#Preview {
    ContentView()
        .preferredColorScheme(.light)
}
