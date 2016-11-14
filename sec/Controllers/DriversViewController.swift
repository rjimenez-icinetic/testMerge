//
//  DriversViewController.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class DriversViewController: TableViewController<DriversScreen1DSItem>, UITableViewDataSource, UITableViewDelegate {
    
    typealias Cell = DetailImageCell

    
    override init() {
        super.init()
		
		datasource = DatasourceManager.sharedInstance.DriversScreen1DS
		dataResponse = self	
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AnalyticsManager.sharedInstance?.analytics?.logPage("Drivers")
       
	    navigationItem.title = NSLocalizedString("Drivers", comment: "")
			
		view.setBackgroundImage(UIImage(named: "bkg1381373.png"))

        tableView.dataSource = self
        tableView.delegate = self
        tableView.registerClass(Cell.self, forCellReuseIdentifier: Cell.identifier)
		behaviors.append(FilterBehavior<DriversFilterViewController>(viewController: self))
		behaviors.append(SearchBehavior(viewController: self))
		behaviors.append(CreateBehavior<DriversFormViewController, DriversScreen1DSItem>(viewController: self))

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
			
        cell.photoImageView.loadImage(datasource.imagePath(item.picture))
		cell.titleLabel.text = String(format: "%@ %@", item.firstname ?? "", item.lastname ?? "")
		cell.detailLabel.text = item.phone
		
		// Styles

		cell.titleLabel.font = Style.sharedInstance.font(Fonts.Sizes.medium, bold: true, italic: false)
	
		cell.detailLabel.font = Style.sharedInstance.font(Fonts.Sizes.small, bold: false, italic: true)
		cell.detailLabel.textColor = UIColor(rgb: 0xffffff)
			
		return cell
    }

	 //MARK: - <UITableViewDelegate>
	 
	
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        
        tableView.deselectRowAtIndexPath(indexPath, animated: true)

        let destinationViewController = DriversDetailViewController()
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

extension DriversViewController: DataResponse {

    func success() {
        
        tableView.reloadData()
    }
    
    func failure(error: NSError?) {
        
        ErrorManager.show(error, rootController: self)
    }
}

