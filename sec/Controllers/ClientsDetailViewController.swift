//
//  ClientsDetailViewController.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class ClientsDetailViewController: DataViewController<ClientsDSItem> {
    
    var didSetupConstraints = false
	
	var textLabel1Header: UILabel!
	var textLabel1: UILabel!
	var textLabel2Header: UILabel!
	var textLabel2: UILabel!
	var textLabel2Button: UIButton!
	
	var textLabel3Header: UILabel!
	var textLabel3: UILabel!
	var textLabel3Button: UIButton!
	
	var textLabel4Header: UILabel!
	var textLabel4: UILabel!
	var textLabel4Button: UIButton!
	
	var textLabel5Header: UILabel!
	var textLabel5: UILabel!
	var textLabel6Header: UILabel!
	var textLabel6: UILabel!
	var textLabel7Header: UILabel!
	var textLabel7: UILabel!
	

	override init() {
        super.init()
        
        datasource = DatasourceManager.sharedInstance.ClientsDS
        dataResponse = self
    }
	
	override func viewDidLoad() {
        super.viewDidLoad()

		AnalyticsManager.sharedInstance?.analytics?.logPage("CLIENT")
		
		view.setBackgroundImage(UIImage(named: "bkg1381373.png"))
		
		textLabel1Header = createHeaderLabel("Client")
		addSubview(textLabel1Header)	
		
		textLabel1 = createLabel()
		addSubview(textLabel1)	
		
		textLabel2Header = createHeaderLabel("Phone")
		addSubview(textLabel2Header)	
		
		textLabel2 = createLabel()
		addSubview(textLabel2)	
		
		textLabel2Button = createButton(Images.phone)
        addSubview(textLabel2Button)
		 
		textLabel3Header = createHeaderLabel("Email")
		addSubview(textLabel3Header)	
		
		textLabel3 = createLabel()
		addSubview(textLabel3)	
		
		textLabel3Button = createButton(Images.email)
        addSubview(textLabel3Button)
		 
		textLabel4Header = createHeaderLabel("Address")
		addSubview(textLabel4Header)	
		
		textLabel4 = createLabel()
		addSubview(textLabel4)	
		
		textLabel4Button = createButton(Images.location)
        addSubview(textLabel4Button)
		 
		textLabel5Header = createHeaderLabel("ZIPCode")
		addSubview(textLabel5Header)	
		
		textLabel5 = createLabel()
		addSubview(textLabel5)	
		
		textLabel6Header = createHeaderLabel("City")
		addSubview(textLabel6Header)	
		
		textLabel6 = createLabel()
		addSubview(textLabel6)	
		
		textLabel7Header = createHeaderLabel("Country")
		addSubview(textLabel7Header)	
		
		textLabel7 = createLabel()
		addSubview(textLabel7)	
		
		behaviors.append(UpdateBehavior<ClientsFormViewController, ClientsDSItem>(dataViewController: self))
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
			"textLabel2Button": textLabel2Button,
			"textLabel3Header": textLabel3Header, 
			"textLabel3": textLabel3,
			"textLabel3Button": textLabel3Button,
			"textLabel4Header": textLabel4Header, 
			"textLabel4": textLabel4,
			"textLabel4Button": textLabel4Button,
			"textLabel5Header": textLabel5Header, 
			"textLabel5": textLabel5,
			"textLabel6Header": textLabel6Header, 
			"textLabel6": textLabel6,
			"textLabel7Header": textLabel7Header, 
			"textLabel7": textLabel7,
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
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel2]-margin-[textLabel2Button(buttonSize)]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel2Button.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:[textLabel2Button(buttonSize)]",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		contentConstraints.append(NSLayoutConstraint(item: textLabel2Button,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: textLabel2,
            attribute: .CenterY,
            multiplier: 1.0,
            constant: 0))
			
		textLabel3Header.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel3Header]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel3.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel3]-margin-[textLabel3Button(buttonSize)]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel3Button.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:[textLabel3Button(buttonSize)]",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		contentConstraints.append(NSLayoutConstraint(item: textLabel3Button,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: textLabel3,
            attribute: .CenterY,
            multiplier: 1.0,
            constant: 0))
			
		textLabel4Header.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel4Header]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
			
		textLabel4.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel4]-margin-[textLabel4Button(buttonSize)]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel4Button.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:[textLabel4Button(buttonSize)]",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		contentConstraints.append(NSLayoutConstraint(item: textLabel4Button,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: textLabel4,
            attribute: .CenterY,
            multiplier: 1.0,
            constant: 0))
			
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
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel6]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
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
		
		contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:|-margin-[textLabel1Header]-margin-[textLabel1]-margin-[textLabel2Header]-margin-[textLabel2]-margin-[textLabel3Header]-margin-[textLabel3]-margin-[textLabel4Header]-margin-[textLabel4]-margin-[textLabel5Header]-margin-[textLabel5]-margin-[textLabel6Header]-margin-[textLabel6]-margin-[textLabel7Header]-margin-[textLabel7]-(>=margin)-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))

		view.addConstraints(mainConstraints)
        contentView.addConstraints(contentConstraints)
        scrollView.addConstraints(scrollConstraints)
	}
}

extension ClientsDetailViewController: DataResponse {

    func success() {
        
        navigationItem.title = ""
        
 		textLabel1.text = String(format: "%@ - %@", String(int: item?.clientID), item?.name ?? "")
		
		textLabel2.text = item?.phone
		
		setAction(PhoneAction(uri: item?.phone), view: textLabel2)
		setAction(PhoneAction(uri: item?.phone), view: textLabel2Button)
		 
		textLabel3.text = item?.email
		
		setAction(MailAction(recipient: item?.email), view: textLabel3)
		setAction(MailAction(recipient: item?.email), view: textLabel3Button)
		 
		textLabel4.text = item?.address
		
		setAction(MapAction(uri: item?.address), view: textLabel4)
		setAction(MapAction(uri: item?.address), view: textLabel4Button)
		 
		textLabel5.text = String(int: item?.zIPCode)
		
		textLabel6.text = item?.city
		
		textLabel7.text = item?.country
		
       
    }
    
    func failure(error: NSError?) {
        ErrorManager.show(error, rootController: self)
    }
}


