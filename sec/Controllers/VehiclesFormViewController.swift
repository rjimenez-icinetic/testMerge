//
//  VehiclesFormViewController.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//
import UIKit

class VehiclesFormViewController: FormViewController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

		AnalyticsManager.sharedInstance?.analytics?.logPage("")
		let item = self.item as? VehiclesDSItem
    
		let serialField = IntegerField(name: VehiclesDSItemMapping.serial, label: "Serial", required: false, value: item?.serial)
        contentView.addSubview(serialField)
		
		let makeField = StringField(name: VehiclesDSItemMapping.make, label: "Make", required: false, value: item?.make)
        contentView.addSubview(makeField)
		
		let modelField = StringField(name: VehiclesDSItemMapping.model, label: "Model", required: false, value: item?.model)
        contentView.addSubview(modelField)
		
		let engineField = StringField(name: VehiclesDSItemMapping.engine, label: "Engine", required: false, value: item?.engine)
        contentView.addSubview(engineField)
		
		let milesField = IntegerField(name: VehiclesDSItemMapping.miles, label: "Miles", required: false, value: item?.miles)
        contentView.addSubview(milesField)
		
		let statusField = StringField(name: VehiclesDSItemMapping.status, label: "Status", required: false, value: item?.status)
        contentView.addSubview(statusField)
		
       
        updateViewConstraints()
        
        retrieveFields()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

