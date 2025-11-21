//
//  AnyDonutChart.swift
//  FancyExamples
//
//  Created by Nariman Nogaibayev on 21.11.2025.
//

import SwiftUI

protocol AnyDonutChart {}

extension AnyDonutChart {

    func donutShadow(_ shadow: ShadowStyle) -> AnyDonutChart {}
    
    func donutAnimation(_ animation: DonutChartAnimation) -> AnyDonutChart {}
    
    func donutScaleEffect(_ scale: CGSize) -> AnyDonutChart {}
    
    func donutStroke(_ stroke: StrokeStyle) -> AnyDonutChart {}
}

extension AnyDonutChart {

    func donutChartAnimation(_ animation: DonutChartAnimation) -> some AnyDonutChart {
        AnyDonutChartWrapper(
            original: {
                self
//                    .environment(\.donutChartAnimation, animation: animation)
            }
        )
    }
}

