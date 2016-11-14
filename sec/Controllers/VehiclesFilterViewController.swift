//
//  VehiclesFilterViewController.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class VehiclesFilterViewController: FilterViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filterFields = [
			OptionsFilterField(datasource: datasource,
                datasourceOptions: datasourceOptions,
                name: VehiclesDSItemMapping.status,
                label: "Status",
                viewController: self),
            
        ]

        loadFields()
    }
}

