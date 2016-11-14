//
//  VehiclesDSItem.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

enum VehiclesDSItemMapping {
	static let serial = "serial"
	static let make = "make"
	static let model = "model"
	static let engine = "engine"
	static let miles = "miles"
	static let status = "status"
	static let id = "id"
}

public class VehiclesDSItem : Item {
	
	var serial : Int?
	var make : String?
	var model : String?
	var engine : String?
	var miles : Int?
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
        
 		serial = dic[VehiclesDSItemMapping.serial] as? Int
		
		make = dic[VehiclesDSItemMapping.make] as? String
		
		model = dic[VehiclesDSItemMapping.model] as? String
		
		engine = dic[VehiclesDSItemMapping.engine] as? String
		
		miles = dic[VehiclesDSItemMapping.miles] as? Int
		
		status = dic[VehiclesDSItemMapping.status] as? String
		
		id = dic[VehiclesDSItemMapping.id] as? String
		
	   
    }
}
	

