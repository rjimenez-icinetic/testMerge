//
//  LineChartViewController.swift
//  sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit
import Charts

class LineChartViewController<T>: DataSetViewController<T> {

    var titleLabel: UILabel!
    
    var chartView: LineChartView!
    
    var didSetupContraints = false
    
    var mainConstraints: [NSLayoutConstraint] = []
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    override init() {
        super.init()
    }
    
    deinit {
        if chartView?.superview != nil {
            chartView?.removeFromSuperview()
        }
        chartView = nil
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = Style.sharedInstance.backgroundColor
        
        titleLabel = UILabel()
        titleLabel.textAlignment = .Center
        titleLabel.font = Style.sharedInstance.font
        titleLabel.textColor = Style.sharedInstance.foregroundColor
        view.addSubview(titleLabel)
        
        chartView = LineChartView()
        view.addSubview(chartView)
        
        chartView.setup()
        
        let refreshButton = UIBarButtonItem(barButtonSystemItem: .Refresh, target: self, action: #selector(refreshData))
        navigationItem.rightBarButtonItem = refreshButton
        
        for behavior in behaviors {
            behavior.load()
        }
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func updateViewConstraints() {
        if !didSetupContraints {
            didSetupContraints = true
            setupConstraints()
        }
        super.updateViewConstraints()
    }
    
    func setupConstraints() {
        
        titleLabel.translatesAutoresizingMaskIntoConstraints = false
        chartView.translatesAutoresizingMaskIntoConstraints = false
        view.removeConstraints(mainConstraints)
        mainConstraints.removeAll()
        
        let views:[String: AnyObject] = [
            "topGuide" : topLayoutGuide,
            "titleLabel": titleLabel,
            "chartView" : chartView,
            "bottomGuide": bottomLayoutGuide
        ]
        
        let metrics:[String: CGFloat] = [
            "margin": Dimens.Margins.medium
        ]
        
        mainConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[chartView]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
        mainConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[titleLabel]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
        mainConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:|[topGuide]-margin-[titleLabel]-margin-[chartView]-margin-[bottomGuide]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
        view.addConstraints(mainConstraints)
    }
    
    func chartDataSet(yVals: [ChartDataEntry]?, label: String?, color: UIColor?) -> LineChartDataSet {
        
        let dataSet = LineChartDataSet(yVals: yVals, label: label)
        dataSet.lineWidth = 1.0
        dataSet.circleRadius = 3.0
        dataSet.drawCircleHoleEnabled = true
        if let color = color {
            dataSet.setColors([color], alpha: 1.0)
            dataSet.fillColor = color
            dataSet.setCircleColor(color)
        }
        return dataSet
    }
    
    func chartData(xVals: [String?]?, dataSets: [LineChartDataSet]?) -> LineChartData {
    
        let data = LineChartData(xVals: xVals, dataSets: dataSets)
        data.setValueFont(Style.sharedInstance.font(Fonts.Sizes.small))
        return data
    }
    
    override func clearData() {
        super.clearData()
        chartView.data = nil
    }
    
    override func loadDataSuccess(response: [T]) {
        super.loadDataSuccess(response)
        if items.count == 0 {
            chartView.noDataText = NSLocalizedString("No info to show", comment: "")
        }
    }
}
