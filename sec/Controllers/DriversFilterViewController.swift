//
//  DriversFilterViewController.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class DriversFilterViewController: FilterViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filterFields = [
			OptionsFilterField(datasource: datasource,
                datasourceOptions: datasourceOptions,
                name: DriversScreen1DSItemMapping.country,
                label: "country",
                viewController: self),
			OptionsFilterField(datasource: datasource,
                datasourceOptions: datasourceOptions,
                name: DriversScreen1DSItemMapping.city,
                label: "city",
                viewController: self),
            
        ]

        loadFields()
    }
}

