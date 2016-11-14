//
//  DriversScreen1DSItem.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

enum DriversScreen1DSItemMapping {
	static let firstname = "firstname"
	static let lastname = "lastname"
	static let email = "email"
	static let address = "address"
	static let country = "country"
	static let hiredate = "hiredate"
	static let ownvehicle = "ownvehicle"
	static let internationallicense = "internationallicense"
	static let city = "city"
	static let phone = "phone"
	static let picture = "picture"
	static let id = "id"
}

public class DriversScreen1DSItem : Item {
	
	var firstname : String?
	var lastname : String?
	var email : String?
	var address : String?
	var country : String?
	var hiredate : NSDate?
	var ownvehicle : Bool?
	var internationallicense : Bool?
	var city : String?
	var phone : String?
	var picture : String?
	var id : String?
	
	// MAR: - <Item>

	public var identifier: AnyObject? {
		guard let identifier = id else {
			return ""
		}
		return identifier
	}
	
	required public init?(dictionary: NSDictionary?) {
    
        retrieve(dictionary)
    }
	
	public func retrieve(dictionary: NSDictionary?) {
     
        guard let dic = dictionary else {
            return
        }
        
 		firstname = dic[DriversScreen1DSItemMapping.firstname] as? String
		
		lastname = dic[DriversScreen1DSItemMapping.lastname] as? String
		
		email = dic[DriversScreen1DSItemMapping.email] as? String
		
		address = dic[DriversScreen1DSItemMapping.address] as? String
		
		country = dic[DriversScreen1DSItemMapping.country] as? String
		
		hiredate = NSDate.date(dic[DriversScreen1DSItemMapping.hiredate] as? String)
		
		ownvehicle = dic[DriversScreen1DSItemMapping.ownvehicle] as? Bool
		
		internationallicense = dic[DriversScreen1DSItemMapping.internationallicense] as? Bool
		
		city = dic[DriversScreen1DSItemMapping.city] as? String
		
		phone = dic[DriversScreen1DSItemMapping.phone] as? String
		
		picture = dic[DriversScreen1DSItemMapping.picture] as? String
		
		id = dic[DriversScreen1DSItemMapping.id] as? String
		
	   
    }
}
	

