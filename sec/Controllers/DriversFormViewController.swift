//
//  DriversFormViewController.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//
import UIKit

class DriversFormViewController: FormViewController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()

		AnalyticsManager.sharedInstance?.analytics?.logPage("")
		let item = self.item as? DriversScreen1DSItem
    
		let firstnameField = StringField(name: DriversScreen1DSItemMapping.firstname, label: "firstname", required: false, value: item?.firstname)
        contentView.addSubview(firstnameField)
		
		let lastnameField = StringField(name: DriversScreen1DSItemMapping.lastname, label: "lastname", required: false, value: item?.lastname)
        contentView.addSubview(lastnameField)
		
		let emailField = StringField(name: DriversScreen1DSItemMapping.email, label: "email", required: false, value: item?.email)
        contentView.addSubview(emailField)
		
		let addressField = StringField(name: DriversScreen1DSItemMapping.address, label: "address", required: false, value: item?.address)
        contentView.addSubview(addressField)
		
		let countryField = StringField(name: DriversScreen1DSItemMapping.country, label: "country", required: false, value: item?.country)
        contentView.addSubview(countryField)
		
		let hiredateField = DateField(name: DriversScreen1DSItemMapping.hiredate, label: "hiredate", required: false, value: item?.hiredate)
        contentView.addSubview(hiredateField)
		
		let ownvehicleField = TristateField(name: DriversScreen1DSItemMapping.ownvehicle, label: "ownvehicle", value: item?.ownvehicle)
        contentView.addSubview(ownvehicleField)
		
		let internationallicenseField = TristateField(name: DriversScreen1DSItemMapping.internationallicense, label: "internationallicense", value: item?.internationallicense)
        contentView.addSubview(internationallicenseField)
		
		let cityField = StringField(name: DriversScreen1DSItemMapping.city, label: "city", required: false, value: item?.city)
        contentView.addSubview(cityField)
		
		let phoneField = StringField(name: DriversScreen1DSItemMapping.phone, label: "phone", required: false, value: item?.phone)
        contentView.addSubview(phoneField)
		
		let pictureField = ImageField(name: DriversScreen1DSItemMapping.picture, label: "picture", required: false, viewController: self, value: crudService?.imagePath(item?.picture))
        contentView.addSubview(pictureField)
		
       
        updateViewConstraints()
        
        retrieveFields()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
}

