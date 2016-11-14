//
//  VehiclesViewController.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class VehiclesViewController: TableViewController<VehiclesDSItem>, UITableViewDataSource, UITableViewDelegate {
    
    typealias Cell = DetailCell

    
    override init() {
        super.init()
		
		datasource = DatasourceManager.sharedInstance.VehiclesDS
		dataResponse = self	
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AnalyticsManager.sharedInstance?.analytics?.logPage("Vehicles")
       
	    navigationItem.title = NSLocalizedString("Vehicles", comment: "")
			
		view.setBackgroundImage(UIImage(named: "bkg1381373.png"))

        tableView.dataSource = self
        tableView.delegate = self
        tableView.registerClass(Cell.self, forCellReuseIdentifier: Cell.identifier)
		behaviors.append(FilterBehavior<VehiclesFilterViewController>(viewController: self))
		behaviors.append(CreateBehavior<VehiclesFormViewController, VehiclesDSItem>(viewController: self))
		behaviors.append(SearchBehavior(viewController: self))

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
		cell.titleLabel.text = String(format: "%@ %@", item.make ?? "", item.model ?? "")
		cell.detailLabel.text = item.status
		
		// Styles

		cell.titleLabel.font = Style.sharedInstance.font(Fonts.Sizes.medium, bold: true, italic: false)
	
		cell.detailLabel.font = Style.sharedInstance.font(Fonts.Sizes.small, bold: false, italic: true)
			
		return cell
    }

	 //MARK: - <UITableViewDelegate>
	 
	
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)

        let destinationViewController = VehiclesDetailViewController()
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

extension VehiclesViewController: DataResponse {

    func success() {
        
        tableView.reloadData()
    }
    
    func failure(error: NSError?) {
        
        ErrorManager.show(error, rootController: self)
    }
}

