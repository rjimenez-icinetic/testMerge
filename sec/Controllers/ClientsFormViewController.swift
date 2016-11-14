//
//  ClientsFormViewController.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//
import UIKit

class ClientsFormViewController: FormViewController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

		AnalyticsManager.sharedInstance?.analytics?.logPage("")
		let item = self.item as? ClientsDSItem
    
		let clientIDField = IntegerField(name: ClientsDSItemMapping.clientID, label: "ClientID", required: false, value: item?.clientID)
        contentView.addSubview(clientIDField)
		
		let nameField = StringField(name: ClientsDSItemMapping.name, label: "Name", required: false, value: item?.name)
        contentView.addSubview(nameField)
		
		let phoneField = StringField(name: ClientsDSItemMapping.phone, label: "Phone", required: false, value: item?.phone)
        contentView.addSubview(phoneField)
		
		let emailField = StringField(name: ClientsDSItemMapping.email, label: "Email", required: false, value: item?.email)
        contentView.addSubview(emailField)
		
		let addressField = StringField(name: ClientsDSItemMapping.address, label: "Address", required: false, value: item?.address)
        contentView.addSubview(addressField)
		
		let zIPCodeField = IntegerField(name: ClientsDSItemMapping.zIPCode, label: "ZIPCode", required: false, value: item?.zIPCode)
        contentView.addSubview(zIPCodeField)
		
		let cityField = StringField(name: ClientsDSItemMapping.city, label: "City", required: false, value: item?.city)
        contentView.addSubview(cityField)
		
		let countryField = StringField(name: ClientsDSItemMapping.country, label: "Country", required: false, value: item?.country)
        contentView.addSubview(countryField)
		
       
        updateViewConstraints()
        
        retrieveFields()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

