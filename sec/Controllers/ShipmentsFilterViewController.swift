//
//  ShipmentsFilterViewController.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class ShipmentsFilterViewController: FilterViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filterFields = [
			OptionsFilterField(datasource: datasource,
                datasourceOptions: datasourceOptions,
                name: ShipmentsDSItemMapping.scheduledPickup,
                label: "ScheduledPickup",
                viewController: self),
			OptionsFilterField(datasource: datasource,
                datasourceOptions: datasourceOptions,
                name: ShipmentsDSItemMapping.scheduledDelivery,
                label: "ScheduledDelivery",
                viewController: self),
			OptionsFilterField(datasource: datasource,
                datasourceOptions: datasourceOptions,
                name: ShipmentsDSItemMapping.fromCity,
                label: "FromCity",
                viewController: self),
			OptionsFilterField(datasource: datasource,
                datasourceOptions: datasourceOptions,
                name: ShipmentsDSItemMapping.toCity,
                label: "ToCity",
                viewController: self),
			OptionsFilterField(datasource: datasource,
                datasourceOptions: datasourceOptions,
                name: ShipmentsDSItemMapping.status,
                label: "Status",
                viewController: self),
            
        ]

        loadFields()
    }
}

