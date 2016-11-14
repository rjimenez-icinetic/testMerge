//
//  ShipmentsFormViewController.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//
import UIKit

class ShipmentsFormViewController: FormViewController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

		AnalyticsManager.sharedInstance?.analytics?.logPage("")
		let item = self.item as? ShipmentsDSItem
    
		let orderIDField = IntegerField(name: ShipmentsDSItemMapping.orderID, label: "OrderID", required: false, value: item?.orderID)
        contentView.addSubview(orderIDField)
		
		let scheduledPickupField = DateField(name: ShipmentsDSItemMapping.scheduledPickup, label: "ScheduledPickup", required: false, value: item?.scheduledPickup)
        contentView.addSubview(scheduledPickupField)
		
		let actualPickupField = DateField(name: ShipmentsDSItemMapping.actualPickup, label: "ActualPickup", required: false, value: item?.actualPickup)
        contentView.addSubview(actualPickupField)
		
		let scheduledDeliveryField = DateField(name: ShipmentsDSItemMapping.scheduledDelivery, label: "ScheduledDelivery", required: false, value: item?.scheduledDelivery)
        contentView.addSubview(scheduledDeliveryField)
		
		let actualDeliveryField = DateField(name: ShipmentsDSItemMapping.actualDelivery, label: "ActualDelivery", required: false, value: item?.actualDelivery)
        contentView.addSubview(actualDeliveryField)
		
		let expressField = TristateField(name: ShipmentsDSItemMapping.express, label: "Express", value: item?.express)
        contentView.addSubview(expressField)
		
		let internationalField = TristateField(name: ShipmentsDSItemMapping.international, label: "International", value: item?.international)
        contentView.addSubview(internationalField)
		
		let cargoField = StringField(name: ShipmentsDSItemMapping.cargo, label: "Cargo", required: false, value: item?.cargo)
        contentView.addSubview(cargoField)
		
		let weightField = IntegerField(name: ShipmentsDSItemMapping.weight, label: "Weight", required: false, value: item?.weight)
        contentView.addSubview(weightField)
		
		let fromAddressField = StringField(name: ShipmentsDSItemMapping.fromAddress, label: "FromAddress", required: false, value: item?.fromAddress)
        contentView.addSubview(fromAddressField)
		
		let fromCityField = StringField(name: ShipmentsDSItemMapping.fromCity, label: "FromCity", required: false, value: item?.fromCity)
        contentView.addSubview(fromCityField)
		
		let fromZIPField = IntegerField(name: ShipmentsDSItemMapping.fromZIP, label: "FromZIP", required: false, value: item?.fromZIP)
        contentView.addSubview(fromZIPField)
		
		let fromCountryField = StringField(name: ShipmentsDSItemMapping.fromCountry, label: "FromCountry", required: false, value: item?.fromCountry)
        contentView.addSubview(fromCountryField)
		
		let toAddressField = StringField(name: ShipmentsDSItemMapping.toAddress, label: "ToAddress", required: false, value: item?.toAddress)
        contentView.addSubview(toAddressField)
		
		let toCityField = StringField(name: ShipmentsDSItemMapping.toCity, label: "ToCity", required: false, value: item?.toCity)
        contentView.addSubview(toCityField)
		
		let toZIPField = IntegerField(name: ShipmentsDSItemMapping.toZIP, label: "ToZIP", required: false, value: item?.toZIP)
        contentView.addSubview(toZIPField)
		
		let toCountryField = StringField(name: ShipmentsDSItemMapping.toCountry, label: "ToCountry", required: false, value: item?.toCountry)
        contentView.addSubview(toCountryField)
		
		let statusField = StringField(name: ShipmentsDSItemMapping.status, label: "Status", required: false, value: item?.status)
        contentView.addSubview(statusField)
		
       
        updateViewConstraints()
        
        retrieveFields()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

