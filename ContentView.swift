import SwiftUI

struct ContentView: View {
    
    @State private var selectedItems: [DonutChart.Item]?

    var body: some View {
        DonutChart(
            selectedItems: selectedItems,
            items: [
                .init(id: 0, percentage: 10, color: .blue, label: "repayment"),
                .init(id: 1, percentage: 20, color: .blue, label: "credit"),
                .init(id: 2, percentage: 50, color: .blue, label: "debt"),
                .init(id: 3, percentage: 20, color: .blue, label: "duration")
            ]
        )
        .donutShadow(.drop(radius: 3))
        .donutStroke(.init(lineWidht: 10))
        .donuteAnimation(.default)
    }
}
