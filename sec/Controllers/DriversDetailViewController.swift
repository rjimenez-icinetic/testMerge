//
//  DriversDetailViewController.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class DriversDetailViewController: DataViewController<DriversScreen1DSItem> {
    
    var didSetupConstraints = false
	
	var imageView1: UIImageView!
	var textLabel2Header: UILabel!
	var textLabel2: UILabel!
	var textLabel3Header: UILabel!
	var textLabel3: UILabel!
	var textLabel3Button: UIButton!
	
	var textLabel4Header: UILabel!
	var textLabel4: UILabel!
	var textLabel4Button: UIButton!
	
	var textLabel5Header: UILabel!
	var textLabel5: UILabel!
	var textLabel5Button: UIButton!
	
	var textLabel6Header: UILabel!
	var textLabel6: UILabel!
	var textLabel7Header: UILabel!
	var textLabel7: UILabel!
	var textLabel8Header: UILabel!
	var textLabel8: UILabel!
	var textLabel9Header: UILabel!
	var textLabel9: UILabel!
	var textLabel10Header: UILabel!
	var textLabel10: UILabel!
	

	override init() {
        super.init()
        
        datasource = DatasourceManager.sharedInstance.DriversScreen1DS
        dataResponse = self
    }
	
	override func viewDidLoad() {
        super.viewDidLoad()

		AnalyticsManager.sharedInstance?.analytics?.logPage("DRIVER")
		
		view.setBackgroundImage(UIImage(named: "bkg1381373.png"))
		
		imageView1 = createImageView()
		addSubview(imageView1)	
		
		textLabel2Header = createHeaderLabel("Driver")
		addSubview(textLabel2Header)	
		
		textLabel2 = createLabel()
		addSubview(textLabel2)	
		
		textLabel3Header = createHeaderLabel("Phone")
		addSubview(textLabel3Header)	
		
		textLabel3 = createLabel()
		addSubview(textLabel3)	
		
		textLabel3Button = createButton(Images.phone)
        addSubview(textLabel3Button)
		 
		textLabel4Header = createHeaderLabel("Email")
		addSubview(textLabel4Header)	
		
		textLabel4 = createLabel()
		addSubview(textLabel4)	
		
		textLabel4Button = createButton(Images.email)
        addSubview(textLabel4Button)
		 
		textLabel5Header = createHeaderLabel("Address")
		addSubview(textLabel5Header)	
		
		textLabel5 = createLabel()
		addSubview(textLabel5)	
		
		textLabel5Button = createButton(Images.location)
        addSubview(textLabel5Button)
		 
		textLabel6Header = createHeaderLabel("City")
		addSubview(textLabel6Header)	
		
		textLabel6 = createLabel()
		addSubview(textLabel6)	
		
		textLabel7Header = createHeaderLabel("Country")
		addSubview(textLabel7Header)	
		
		textLabel7 = createLabel()
		addSubview(textLabel7)	
		
		textLabel8Header = createHeaderLabel("Hired On")
		addSubview(textLabel8Header)	
		
		textLabel8 = createLabel()
		addSubview(textLabel8)	
		
		textLabel9Header = createHeaderLabel("Own Vehicle")
		addSubview(textLabel9Header)	
		
		textLabel9 = createLabel()
		addSubview(textLabel9)	
		
		textLabel10Header = createHeaderLabel("Has International License")
		addSubview(textLabel10Header)	
		
		textLabel10 = createLabel()
		addSubview(textLabel10)	
		
		behaviors.append(UpdateBehavior<DriversFormViewController, DriversScreen1DSItem>(dataViewController: self))
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
			"imageView1": imageView1,
			"textLabel2Header": textLabel2Header, 
			"textLabel2": textLabel2,
			"textLabel3Header": textLabel3Header, 
			"textLabel3": textLabel3,
			"textLabel3Button": textLabel3Button,
			"textLabel4Header": textLabel4Header, 
			"textLabel4": textLabel4,
			"textLabel4Button": textLabel4Button,
			"textLabel5Header": textLabel5Header, 
			"textLabel5": textLabel5,
			"textLabel5Button": textLabel5Button,
			"textLabel6Header": textLabel6Header, 
			"textLabel6": textLabel6,
			"textLabel7Header": textLabel7Header, 
			"textLabel7": textLabel7,
			"textLabel8Header": textLabel8Header, 
			"textLabel8": textLabel8,
			"textLabel9Header": textLabel9Header, 
			"textLabel9": textLabel9,
			"textLabel10Header": textLabel10Header, 
			"textLabel10": textLabel10,
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
			
		imageView1.translatesAutoresizingMaskIntoConstraints = false
		contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|[imageView1]|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
        
        contentConstraints.append(NSLayoutConstraint(item: imageView1,
            attribute: .CenterX,
            relatedBy: .Equal,
            toItem: contentView,
            attribute: .CenterX,
            multiplier: 1.0,
            constant: 0))
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
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel5]-margin-[textLabel5Button(buttonSize)]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		textLabel5Button.translatesAutoresizingMaskIntoConstraints = false
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:[textLabel5Button(buttonSize)]",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
		contentConstraints.append(NSLayoutConstraint(item: textLabel5Button,
            attribute: .CenterY,
            relatedBy: .Equal,
            toItem: textLabel5,
            attribute: .CenterY,
            multiplier: 1.0,
            constant: 0))
			
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
        contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("H:|-margin-[textLabel9]-margin-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))
		
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
		
		contentConstraints.appendContentsOf(NSLayoutConstraint.constraintsWithVisualFormat("V:|-margin-[imageView1]-margin-[textLabel2Header]-margin-[textLabel2]-margin-[textLabel3Header]-margin-[textLabel3]-margin-[textLabel4Header]-margin-[textLabel4]-margin-[textLabel5Header]-margin-[textLabel5]-margin-[textLabel6Header]-margin-[textLabel6]-margin-[textLabel7Header]-margin-[textLabel7]-margin-[textLabel8Header]-margin-[textLabel8]-margin-[textLabel9Header]-margin-[textLabel9]-margin-[textLabel10Header]-margin-[textLabel10]-(>=margin)-|",
            options: .DirectionLeadingToTrailing,
            metrics: metrics,
            views: views))

		view.addConstraints(mainConstraints)
        contentView.addConstraints(contentConstraints)
        scrollView.addConstraints(scrollConstraints)
	}
}

extension DriversDetailViewController: DataResponse {

    func success() {
        
        navigationItem.title = ""
        
 		imageView1.loadImage(datasource.imagePath(item?.picture), containerView: view)
		
		textLabel2.text = String(format: "%@ %@ ", item?.firstname ?? "", item?.lastname ?? "")
		
		textLabel3.text = item?.phone
		
		setAction(PhoneAction(uri: item?.phone), view: textLabel3)
		setAction(PhoneAction(uri: item?.phone), view: textLabel3Button)
		 
		textLabel4.text = item?.email
		
		setAction(MailAction(recipient: item?.email), view: textLabel4)
		setAction(MailAction(recipient: item?.email), view: textLabel4Button)
		 
		textLabel5.text = item?.address
		
		setAction(MapAction(uri: item?.address), view: textLabel5)
		setAction(MapAction(uri: item?.address), view: textLabel5Button)
		 
		textLabel6.text = item?.city
		
		textLabel7.text = item?.country
		
		textLabel8.text = String(date: item?.hiredate)
		
		textLabel9.text = String(bool: item?.ownvehicle)
		
		textLabel10.text = String(bool: item?.internationallicense)
		
       
    }
    
    func failure(error: NSError?) {
        ErrorManager.show(error, rootController: self)
    }
}


