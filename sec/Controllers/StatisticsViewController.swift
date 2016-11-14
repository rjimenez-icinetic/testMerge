//
//  StatisticsViewController.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit
import Charts

class StatisticsViewController: PieChartViewController<DashboardDSItem> {


    override init() {
        super.init()

        datasource = DatasourceManager.sharedInstance.DashboardDS
        dataResponse = self
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        AnalyticsManager.sharedInstance?.analytics?.logPage("Dashboard")
        title = NSLocalizedString("Dashboard", comment: "")

        updateViewConstraints()

        titleLabel.text = "Status"

        loadData()
    }
}

extension StatisticsViewController: DataResponse {

    func success() {

        var xVals:[String?] = []
        var yVals1:[BarChartDataEntry] = []
        var yVals2:[BarChartDataEntry] = []

        for (index, item) in items.enumerate() {
            xVals.append(item.status)

            yVals1.append(BarChartDataEntry(value: Double(item.shipments!) ?? 0, xIndex: index))
            yVals2.append(BarChartDataEntry(value: Double(item.shipments!) ?? 0, xIndex: index))
        }

        if let data = chartView.data {

            data.xVals = xVals
            let serie1DataSet = data.dataSets[0] as? PieChartDataSet
            serie1DataSet?.yVals = yVals1
            let serie2DataSet = data.dataSets[1] as? PieChartDataSet
            serie2DataSet?.yVals = yVals2
            data.notifyDataChanged()
            chartView.notifyDataSetChanged()
        } else {
            let dataSet = chartDataSet(yVals1)
            chartView.data = chartData(xVals, dataSet: dataSet)
        }
    }

    func failure(error: NSError?) {

        ErrorManager.show(error, rootController: self)
    }
}

