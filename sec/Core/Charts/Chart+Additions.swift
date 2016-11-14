//
//  Chart+Additions.swift
//  sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit
import Charts

extension ChartViewBase {

    func setup() {
        
        backgroundColor = UIColor.clearColor()
        
        descriptionFont = Style.sharedInstance.font
        descriptionText = ""
        descriptionTextAlign = .Center
        
        if let view = superview {
            descriptionTextPosition = CGPoint(
                x: view.frame.width / 2,
                y: descriptionFont?.lineHeight ?? 0.0)
        }
        
        noDataText = ""
        noDataTextDescription = nil
        
        infoFont = Style.sharedInstance.font
        infoTextColor = Style.sharedInstance.foregroundColor
        
        legend.orientation = .Horizontal
        legend.verticalAlignment = .Bottom
        legend.horizontalAlignment = .Center
        legend.form = .Square
        legend.formSize = 9.0
        legend.font = Style.sharedInstance.font(Fonts.Sizes.small)
        legend.xEntrySpace = 4.0
        
        animate(xAxisDuration: 1, yAxisDuration: 1, easingOption: .EaseInOutCirc)
    }
}

extension BarLineChartViewBase {

    override func setup() {
        super.setup()
        
        drawGridBackgroundEnabled = false
        
        dragEnabled = true
        setScaleEnabled(true)
        pinchZoomEnabled = false
        
        maxVisibleValueCount = 60
        
        let xAxis = self.xAxis
        xAxis.labelPosition = .Bottom;
        xAxis.labelFont = Style.sharedInstance.font(Fonts.Sizes.small)
        xAxis.drawGridLinesEnabled = false
        xAxis.spaceBetweenLabels = 2
        
        let valueFormatter = NSNumberFormatter()
        valueFormatter.maximumFractionDigits = 1
        
        let leftAxis = self.leftAxis
        leftAxis.labelFont = Style.sharedInstance.font(Fonts.Sizes.small)
        leftAxis.valueFormatter = valueFormatter
        leftAxis.labelPosition = .OutsideChart
        leftAxis.spaceTop = 0.15
        leftAxis.axisMinValue = 0.0 // this replaces startAtZero = true
        
        let rightAxis = self.rightAxis
        rightAxis.enabled = true
        rightAxis.drawGridLinesEnabled = false
        rightAxis.labelFont = Style.sharedInstance.font(Fonts.Sizes.small)
        rightAxis.valueFormatter = valueFormatter
        rightAxis.spaceTop = 0.15
        rightAxis.axisMinValue = 0.0 // this replaces startAtZero = true
    }
}

extension BarChartView {

    override func setup() {
        super.setup()
        
        drawBarShadowEnabled = false
        drawValueAboveBarEnabled = true
    }
}

extension PieChartView {

    override func setup() {
        super.setup()
        
        holeColor = UIColor.clearColor()
        drawSliceTextEnabled = false
        setExtraOffsets(left: 20, top: 0, right: 20, bottom: 0)

    }
}