//
//  ClientsFilterViewController.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class ClientsFilterViewController: FilterViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        filterFields = [
			OptionsFilterField(datasource: datasource,
                datasourceOptions: datasourceOptions,
                name: ClientsDSItemMapping.city,
                label: "City",
                viewController: self),
			OptionsFilterField(datasource: datasource,
                datasourceOptions: datasourceOptions,
                name: ClientsDSItemMapping.country,
                label: "Country",
                viewController: self),
            
        ]

        loadFields()
    }
}

