//
//  ShipmentsDSItem.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

enum ShipmentsDSItemMapping {
	static let orderID = "orderID"
	static let scheduledPickup = "scheduledPickup"
	static let actualPickup = "actualPickup"
	static let scheduledDelivery = "scheduledDelivery"
	static let actualDelivery = "actualDelivery"
	static let express = "express"
	static let international = "international"
	static let cargo = "cargo"
	static let weight = "weight"
	static let fromAddress = "fromAddress"
	static let fromCity = "fromCity"
	static let fromZIP = "fromZIP"
	static let fromCountry = "fromCountry"
	static let toAddress = "toAddress"
	static let toCity = "toCity"
	static let toZIP = "toZIP"
	static let toCountry = "toCountry"
	static let status = "status"
	static let id = "id"
}

public class ShipmentsDSItem : Item {
	
	var orderID : Int?
	var scheduledPickup : NSDate?
	var actualPickup : NSDate?
	var scheduledDelivery : NSDate?
	var actualDelivery : NSDate?
	var express : Bool?
	var international : Bool?
	var cargo : String?
	var weight : Int?
	var fromAddress : String?
	var fromCity : String?
	var fromZIP : Int?
	var fromCountry : String?
	var toAddress : String?
	var toCity : String?
	var toZIP : Int?
	var toCountry : String?
	var status : String?
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
        
 		orderID = dic[ShipmentsDSItemMapping.orderID] as? Int
		
		scheduledPickup = NSDate.date(dic[ShipmentsDSItemMapping.scheduledPickup] as? String)
		
		actualPickup = NSDate.date(dic[ShipmentsDSItemMapping.actualPickup] as? String)
		
		scheduledDelivery = NSDate.date(dic[ShipmentsDSItemMapping.scheduledDelivery] as? String)
		
		actualDelivery = NSDate.date(dic[ShipmentsDSItemMapping.actualDelivery] as? String)
		
		express = dic[ShipmentsDSItemMapping.express] as? Bool
		
		international = dic[ShipmentsDSItemMapping.international] as? Bool
		
		cargo = dic[ShipmentsDSItemMapping.cargo] as? String
		
		weight = dic[ShipmentsDSItemMapping.weight] as? Int
		
		fromAddress = dic[ShipmentsDSItemMapping.fromAddress] as? String
		
		fromCity = dic[ShipmentsDSItemMapping.fromCity] as? String
		
		fromZIP = dic[ShipmentsDSItemMapping.fromZIP] as? Int
		
		fromCountry = dic[ShipmentsDSItemMapping.fromCountry] as? String
		
		toAddress = dic[ShipmentsDSItemMapping.toAddress] as? String
		
		toCity = dic[ShipmentsDSItemMapping.toCity] as? String
		
		toZIP = dic[ShipmentsDSItemMapping.toZIP] as? Int
		
		toCountry = dic[ShipmentsDSItemMapping.toCountry] as? String
		
		status = dic[ShipmentsDSItemMapping.status] as? String
		
		id = dic[ShipmentsDSItemMapping.id] as? String
		
	   
    }
}
	

