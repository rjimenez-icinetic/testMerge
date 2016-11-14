//
//  ShipmentsViewController.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class ShipmentsViewController: TableViewController<ShipmentsDSItem>, UITableViewDataSource, UITableViewDelegate {
    
    typealias Cell = DetailCell

    
    override init() {
        super.init()
		
		datasource = DatasourceManager.sharedInstance.ShipmentsDS
		dataResponse = self	
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AnalyticsManager.sharedInstance?.analytics?.logPage("Shipments")
       
	    navigationItem.title = NSLocalizedString("Shipments", comment: "")
			
		view.setBackgroundImage(UIImage(named: "bkg1381373.png"))

        tableView.dataSource = self
        tableView.delegate = self
        tableView.registerClass(Cell.self, forCellReuseIdentifier: Cell.identifier)
		behaviors.append(FilterBehavior<ShipmentsFilterViewController>(viewController: self))
		behaviors.append(SearchBehavior(viewController: self))
		behaviors.append(CreateBehavior<ShipmentsFormViewController, ShipmentsDSItem>(viewController: self))

        for behavior in self.behaviors {
            behavior.load()
        }
			
		updateViewConstraints()

        loadData()					
    }
    
	//MARK: - <UITableViewDataSource>
	
	func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return items.count
    }
	
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    
        let cell = tableView.dequeueReusableCellWithIdentifier(Cell.identifier, forIndexPath: indexPath) as! Cell

		// You can customize the accessory icon ...
        let icon = UIImage(named: Images.arrow)?.imageWithRenderingMode(.AlwaysTemplate)
        let accessoryImageView = UIImageView(image: icon)
        accessoryImageView.tintColor = Style.sharedInstance.foregroundColor
        cell.accessoryView = accessoryImageView
	
        // Binding 
        let item = items[indexPath.row]
		cell.titleLabel.text = String(format: "%@ from %@ to %@", item.cargo ?? "", item.fromCity ?? "", item.toCity ?? "")
		cell.detailLabel.text = String(format: "Deliver on %@ [%@]", String(date: item.scheduledDelivery), item.status ?? "")
		
		// Styles

		cell.titleLabel.font = Style.sharedInstance.font(Fonts.Sizes.medium, bold: true, italic: false)
	
		cell.detailLabel.font = Style.sharedInstance.font(Fonts.Sizes.small, bold: false, italic: true)
			
		return cell
    }

	 //MARK: - <UITableViewDelegate>
	 
	
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)

        let destinationViewController = ShipmentsDetailViewController()
        destinationViewController.item = items[indexPath.row]
	        
        navigationController?.pushViewController(destinationViewController, animated: true)
    }
	
	func tableView(tableView: UITableView, willDisplayCell cell: UITableViewCell, forRowAtIndexPath indexPath: NSIndexPath) {
        
        loadMoreData(indexPath.row)
		
		cell.preservesSuperviewLayoutMargins = false
        cell.layoutMargins = UIEdgeInsetsZero
        cell.separatorInset = UIEdgeInsetsZero
    }
}

//MARK: - <DataResponse>

extension ShipmentsViewController: DataResponse {

    func success() {
        
        tableView.reloadData()
    }
    
    func failure(error: NSError?) {
        
        ErrorManager.show(error, rootController: self)
    }
}

