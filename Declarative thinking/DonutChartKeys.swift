//
//  File.swift
//  FancyExamples
//
//  Created by Nariman Nogaibayev on 21.11.2025.
//

import SwiftUI

struct DonutChartAnimation {
    var scale: CGFloat
}

struct DonutChartStroke {
    
}

struct DonutChartShadow {
    
}

@Environment(\.donutShadow) private var shadow
@Environment(\.donutStroke) private var stroke
@Environment(\.donutChartAnimation) private var animation

extension EnvironmentValues {
    private struct DonutChartAnimationKey: EnvironmentKey {
        static let defaultValue: DonutChartAnimation = .init(scale: 1)
    }
    
    private struct DonutStrokeKey: EnvironmentKey {
        static let defaultValue: DonutStrokeKey = .init(scale: )
    }

    var donutChartAnimation: DonutChartAnimation {
        get { self[DonutChartAnimationKey.self] }
        set { self[DonutChartAnimationKey.self] = newValue }
    }
}
