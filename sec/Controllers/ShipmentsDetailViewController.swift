//
//  ShipmentsDetailViewController.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class ShipmentsDetailViewController: DataViewController<ShipmentsDSItem> {
    
    var didSetupConstraints = false
	
	var textLabel1Header: UILabel!
	var textLabel1: UILabel!
	var textLabel2Header: UILabel!
	var textLabel2: UILabel!
	var textLabel3Header: UILabel!
	var textLabel3: UILabel!
	var textLabel4Header: UILabel!
	var textLabel4: UILabel!
	var textLabel5Header: UILabel!
	var textLabel5: UILabel!
	var textLabel6Header: UILabel!
	var textLabel6: UILabel!
	var textLabel6Button: UIButton!
	
	var textLabel7Header: UILabel!
	var textLabel7: UILabel!
	var textLabel8Header: UILabel!
	var textLabel8: UILabel!
	var textLabel9Header: UILabel!
	var textLabel9: UILabel!
	var textLabel9Button: UIButton!
	
	var textLabel10Header: UILabel!
	var textLabel10: UILabel!
	var textLabel11Header: UILabel!
	var textLabel11: UILabel!
	

	override init() {
        super.init()
        
        datasource = DatasourceManager.sharedInstance.ShipmentsDS
        dataResponse = self
    }
	
	override func viewDidLoad() {
        super.viewDidLoad()

		AnalyticsManager.sharedInstance?.analytics?.logPage("Order #{ShipmentsDS.OrderID}")
		
		view.setBackgroundImage(UIImage(named: "bkg1381373.png"))
		
		textLabel1Header = createHeaderLabel("Status")
		addSubview(textLabel1Header)	
		
		textLabel1 = createLabel()
		addSubview(textLabel1)	
		
		textLabel2Header = createHeaderLabel("Cargo")
		addSubview(textLabel2Header)	
		
		textLabel2 = createLabel()
		addSubview(textLabel2)	
		
		textLabel3Header = createHeaderLabel("Weight")
		addSubview(textLabel3Header)	
		
		textLabel3 = createLabel()
		addSubview(textLabel3)	
		
		textLabel4Header = createHeaderLabel("Scheduled Pickup")
		addSubview(textLabel4Header)	
		
		textLabel4 = createLabel()
		addSubview(textLabel4)	
		
		textLabel5Header = createHeaderLabel("Actual Pickup")
		addSubview(textLabel5Header)	
		
		textLabel5 = createLabel()
		addSubview(textLabel5)	
		
		textLabel6Header = createHeaderLabel("Pick up address")
		addSubview(textLabel6Header)	
		
		textLabel6 = createLabel()
		addSubview(textLabel6)	
		
		textLabel6Button = createButton(Images.location)
        addSubview(textLabel6Button)
		 
		textLabel7Header = createHeaderLabel("Scheduled Delivery")
		addSubview(textLabel7Header)	
		
		textLabel7 = createLabel()
		addSubview(textLabel7)	
		
		textLabel8Header = createHeaderLabel("Actual Delivery")
		addSubview(textLabel8Header)	
		
		textLabel8 = createLabel()
		addSubview(textLabel8)	
		
		textLabel9Header = createHeaderLabel("Delivery Address")
		addSubview(textLabel9Header)	
		
		textLabel9 = createLabel()
		addSubview(textLabel9)	
		
		textLabel9Button = createButton(Images.location)
        addSubview(textLabel9Button)
		 
		textLabel10Header = createHeaderLabel("Express")
		addSubview(textLabel10Header)	
		
		textLabel10 = createLabel()
		addSubview(textLabel10)	
		
		textLabel11Header = createHeaderLabel("International")
		addSubview(textLabel11Header)	
		
		textLabel11 = createLabel()
		addSubview(textLabel11)	
		
		behaviors.append(UpdateBehavior<ShipmentsFormViewController, ShipmentsDSItem>(dataViewController: self))
		behaviors.append(DeleteBehavior(dataViewController: self))

        for behavior in self.behaviors {
            behavior.load()
        }
		
		updateViewConstraints()
		
		loadData()
	}
    
    override func updateViewConstraints() {
        
        if !didSetupConstraints {
            
            didSetupConstraints = true
            setupConstraints()
        }
        super.updateViewConstraints()
    }

	func setupConstraints() {
        
        let views:[String: UIView] = [
            "scrollView": scrollView,
            "contentView": contentView,
			"textLabel1Header": textLabel1Header, 
			"textLabel1": textLabel1,
			"textLabel2Header": textLabel2Header, 
			"textLabel2": textLabel2,
			"textLabel3Header": textLabel3Header, 
			"textLabel3": textLabel3,
			"textLabel4Header": textLabel4Header, 
			"textLabel4": textLabel4,
			"textLabel5Header": textLabel5Header, 
			"textLabel5": textLabel5,
			"textLabel6Header": textLabel6Header, 
			"textLabel6": textLabel6,
			"textLabel6Button": textLabel6Button,
			"textLabel7Header": textLabel7Header, 
			"textLabel7": textLabel7,
			"textLabel8Header": textLabel8Header, 
			"textLabel8": textLabel8,
			"textLabel9Header": textLabel9Header, 
			"textLabel9": textLabel9,
			"textLabel9Button": textLabel9Button,
			"textLabel10Header": textLabel10Header, 
			"textLabel10": textLabel10,
			"textLabel11Header": textLabel11Header, 
			"textLabel11": textLabel11,
        ]
        
        let metrics:[String: CGFloat] = [
            "zero": Dimens.Margins.none,
            "margin": Dimens.Margins.large,
            "buttonSize": Dimens.Sizes.small
        ]
		
		contentView.removeConstraints(contentConstraints)
        scrollView.removeConstraints(scrollConstraints)
        view.removeConstraints(mainConstraints)
		
		scrollView.translatesAutoresizingMaskIntoConstraints = false
		mainConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|[scrollView]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
        mainConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:|[scrollView]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
		contentView.translatesAutoresizingMaskIntoConstraints = false
        scrollConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|[contentView(==scrollView)]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
        scrollConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:|[contentView]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel1Header.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel1Header]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel1.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel1]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel2Header.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel2Header]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel2.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel2]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel3Header.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel3Header]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel3.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel3]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel4Header.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel4Header]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel4.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel4]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel5Header.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel5Header]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel5.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel5]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel6Header.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel6Header]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel6.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel6]-margin-[textLabel6Button(buttonSize)]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel6Button.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:[textLabel6Button(buttonSize)]",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		contentConstraints.append(NSLayoutConstraint(item: textLabel6Button,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: textLabel6,
            attribute: .CenterY,
            multiplier: 1.0,
            constant: 0))
			
		textLabel7Header.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel7Header]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel7.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel7]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel8Header.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel8Header]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel8.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel8]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel9Header.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel9Header]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel9.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel9]-margin-[textLabel9Button(buttonSize)]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel9Button.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:[textLabel9Button(buttonSize)]",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		contentConstraints.append(NSLayoutConstraint(item: textLabel9Button,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: textLabel9,
            attribute: .CenterY,
            multiplier: 1.0,
            constant: 0))
			
		textLabel10Header.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel10Header]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel10.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel10]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel11Header.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel11Header]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel11.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel11]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:|-margin-[textLabel1Header]-margin-[textLabel1]-margin-[textLabel2Header]-margin-[textLabel2]-margin-[textLabel3Header]-margin-[textLabel3]-margin-[textLabel4Header]-margin-[textLabel4]-margin-[textLabel5Header]-margin-[textLabel5]-margin-[textLabel6Header]-margin-[textLabel6]-margin-[textLabel7Header]-margin-[textLabel7]-margin-[textLabel8Header]-margin-[textLabel8]-margin-[textLabel9Header]-margin-[textLabel9]-margin-[textLabel10Header]-margin-[textLabel10]-margin-[textLabel11Header]-margin-[textLabel11]-(>=margin)-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))

		view.addConstraints(mainConstraints)
        contentView.addConstraints(contentConstraints)
        scrollView.addConstraints(scrollConstraints)
	}
}

extension ShipmentsDetailViewController: DataResponse {

    func success() {
        
        navigationItem.title = String(format: "Order #%@", String(int: item?.orderID))
        
 		textLabel1.text = item?.status
		
		textLabel2.text = item?.cargo
		
		textLabel3.text = String(format: "%@ kg", String(int: item?.weight))
		
		textLabel4.text = String(date: item?.scheduledPickup)
		
		textLabel5.text = String(date: item?.actualPickup)
		
		textLabel6.text = String(format: "%@, %@, %@", item?.fromAddress ?? "", item?.fromCity ?? "", String(int: item?.fromZIP))
		
		setAction(MapAction(uri: String(format: "%@, %@, %@", item?.fromAddress ?? "", item?.fromCity ?? "", String(int: item?.fromZIP))), view: textLabel6)
		setAction(MapAction(uri: String(format: "%@, %@, %@", item?.fromAddress ?? "", item?.fromCity ?? "", String(int: item?.fromZIP))), view: textLabel6Button)
		 
		textLabel7.text = String(date: item?.scheduledDelivery)
		
		textLabel8.text = String(date: item?.actualDelivery)
		
		textLabel9.text = String(format: "%@, %@, %@", item?.toAddress ?? "", item?.fromCity ?? "", String(int: item?.fromZIP))
		
		setAction(MapAction(uri: String(format: "%@, %@, %@", item?.toAddress ?? "", item?.fromCity ?? "", String(int: item?.fromZIP))), view: textLabel9)
		setAction(MapAction(uri: String(format: "%@, %@, %@", item?.toAddress ?? "", item?.fromCity ?? "", String(int: item?.fromZIP))), view: textLabel9Button)
		 
		textLabel10.text = String(bool: item?.express)
		
		textLabel11.text = String(bool: item?.international)
		
       
    }
    
    func failure(error: NSError?) {
        ErrorManager.show(error, rootController: self)
    }
}


