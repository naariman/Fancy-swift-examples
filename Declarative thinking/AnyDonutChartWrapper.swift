//
//  File.swift
//  FancyExamples
//
//  Created by Nariman Nogaibayev on 21.11.2025.
//

import SwiftUI

struct AnyDonutChartWrapper<Wrapper: View>: AnyDonutChart {

    var original: () -> Wrapper

    var body: some View {
        original()

    }
}
