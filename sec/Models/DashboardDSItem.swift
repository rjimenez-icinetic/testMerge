//
//  DashboardDSItem.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

enum DashboardDSItemMapping {
	static let status = "status"
	static let shipments = "shipments"
	static let id = "id"
}

public class DashboardDSItem : Item {
	
	var status : String?
	var shipments : Int?
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
        
 		status = dic[DashboardDSItemMapping.status] as? String
		
		shipments = dic[DashboardDSItemMapping.shipments] as? Int
		
		id = dic[DashboardDSItemMapping.id] as? String
		
	   
    }
}
	

