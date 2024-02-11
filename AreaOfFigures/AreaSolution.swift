//
//  AreaSolution.swift
//  AreaOfFigures
//
//  Created by Дмитрий on 09.02.2024.
//

import Foundation


enum Figure: String, CaseIterable, Identifiable {
    case triangle, rectangle, circle, rhombus, pentagon
    var id: Self {
        self
    }
}
