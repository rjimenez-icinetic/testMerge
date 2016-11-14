//
//  DatasourceManager.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import Foundation

class DatasourceManager {

	static let sharedInstance = DatasourceManager()
	
	
	lazy var DriversScreen1DS: CloudDatasource<DriversScreen1DSItem> = {
    
        return CloudDatasource<DriversScreen1DSItem>(baseUrl: DatasourceConfig.Cloud.baseUrl,
                                             resource: DatasourceConfig.Cloud.DriversScreen1DS.resource,
                                             apikey: DatasourceConfig.Cloud.DriversScreen1DS.apiKey,
                                             searchableFields: [DriversScreen1DSItemMapping.firstname, DriversScreen1DSItemMapping.lastname, DriversScreen1DSItemMapping.email, DriversScreen1DSItemMapping.address, DriversScreen1DSItemMapping.country, DriversScreen1DSItemMapping.city, DriversScreen1DSItemMapping.phone]) 
    }()
	
	lazy var ClientsDS: CloudDatasource<ClientsDSItem> = {
    
        return CloudDatasource<ClientsDSItem>(baseUrl: DatasourceConfig.Cloud.baseUrl,
                                             resource: DatasourceConfig.Cloud.ClientsDS.resource,
                                             apikey: DatasourceConfig.Cloud.ClientsDS.apiKey,
                                             searchableFields: [ClientsDSItemMapping.name, ClientsDSItemMapping.phone, ClientsDSItemMapping.email, ClientsDSItemMapping.address, ClientsDSItemMapping.city, ClientsDSItemMapping.country]) 
    }()
	
	lazy var ShipmentsDS: CloudDatasource<ShipmentsDSItem> = {
    
        return CloudDatasource<ShipmentsDSItem>(baseUrl: DatasourceConfig.Cloud.baseUrl,
                                             resource: DatasourceConfig.Cloud.ShipmentsDS.resource,
                                             apikey: DatasourceConfig.Cloud.ShipmentsDS.apiKey,
                                             searchableFields: [ShipmentsDSItemMapping.cargo, ShipmentsDSItemMapping.fromAddress, ShipmentsDSItemMapping.fromCity, ShipmentsDSItemMapping.fromCountry, ShipmentsDSItemMapping.toAddress, ShipmentsDSItemMapping.toCity, ShipmentsDSItemMapping.toCountry, ShipmentsDSItemMapping.status]) 
    }()
	
	lazy var VehiclesDS: CloudDatasource<VehiclesDSItem> = {
    
        return CloudDatasource<VehiclesDSItem>(baseUrl: DatasourceConfig.Cloud.baseUrl,
                                             resource: DatasourceConfig.Cloud.VehiclesDS.resource,
                                             apikey: DatasourceConfig.Cloud.VehiclesDS.apiKey,
                                             searchableFields: [VehiclesDSItemMapping.make, VehiclesDSItemMapping.model, VehiclesDSItemMapping.engine, VehiclesDSItemMapping.status]) 
    }()
	
	lazy var DashboardDS: CloudDatasource<DashboardDSItem> = {
    
        return CloudDatasource<DashboardDSItem>(baseUrl: DatasourceConfig.Cloud.baseUrl,
                                             resource: DatasourceConfig.Cloud.DashboardDS.resource,
                                             apikey: DatasourceConfig.Cloud.DashboardDS.apiKey,
                                             searchableFields: [DashboardDSItemMapping.status]) 
    }()
	
}

