//
//  ClientsDSItem.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

enum ClientsDSItemMapping {
	static let clientID = "clientID"
	static let name = "name"
	static let phone = "phone"
	static let email = "email"
	static let address = "address"
	static let zIPCode = "zIPCode"
	static let city = "city"
	static let country = "country"
	static let id = "id"
}

public class ClientsDSItem : Item {
	
	var clientID : Int?
	var name : String?
	var phone : String?
	var email : String?
	var address : String?
	var zIPCode : Int?
	var city : String?
	var country : String?
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
        
 		clientID = dic[ClientsDSItemMapping.clientID] as? Int
		
		name = dic[ClientsDSItemMapping.name] as? String
		
		phone = dic[ClientsDSItemMapping.phone] as? String
		
		email = dic[ClientsDSItemMapping.email] as? String
		
		address = dic[ClientsDSItemMapping.address] as? String
		
		zIPCode = dic[ClientsDSItemMapping.zIPCode] as? Int
		
		city = dic[ClientsDSItemMapping.city] as? String
		
		country = dic[ClientsDSItemMapping.country] as? String
		
		id = dic[ClientsDSItemMapping.id] as? String
		
	   
    }
}
	

