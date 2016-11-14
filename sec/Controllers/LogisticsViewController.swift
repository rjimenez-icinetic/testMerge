//
//  LogisticsViewController.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//

import UIKit

class LogisticsViewController: CollectionViewController<MenuItem>, UICollectionViewDelegate, UICollectionViewDataSource {

    typealias Cell = MosaicCell

	
    override init() {
        
        super.init()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        AnalyticsManager.sharedInstance?.analytics?.logPage("Logistics")
        
		navigationItem.title = NSLocalizedString("Logistics", comment: "")
		collectionView.setBackgroundImage(UIImage(named: "bkg1381373.png"))
       
        items = [
			MenuItem(text: "DRIVERS", action: NavigationAction<DriversViewController>(rootViewController: self), image: "DRIVERS956509.png"),
			MenuItem(text: "CLIENTS", action: NavigationAction<ClientsViewController>(rootViewController: self), image: "CLIENTS56782.png"),
			MenuItem(text: "VEHICLES", action: NavigationAction<VehiclesViewController>(rootViewController: self), image: "VEHICLES748283.png"),
			MenuItem(text: "SHIPMENTS", action: NavigationAction<ShipmentsViewController>(rootViewController: self), image: "SHIPMENTS40197.png"),
	
        ]
       
		numberOfColumns = 2
		
		collectionView.delegate = self
        collectionView.dataSource = self
        collectionView?.registerClass(Cell.self, forCellWithReuseIdentifier: Cell.identifier)
		

        for behavior in self.behaviors {
            behavior.load()
        }
        
		updateViewConstraints()
    }
   
    // MARK: <UICollectionViewDatasource>
    
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(Cell.identifier, forIndexPath: indexPath) as! Cell

        let item = items[indexPath.row]

        cell.titleLabel.text = item.text
        cell.photoImageView.loadImage(item.image)
        cell.userInteractionEnabled = false
        if let action = item.action where action.canBeExecuted() {
            cell.userInteractionEnabled = true
        }
        
        return cell
    }
    
    func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        return 1;
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count;
    }
    
    // MARK: - <UICollectionViewDelegate>
    
    func collectionView(collectionView: UICollectionView, didSelectItemAtIndexPath indexPath: NSIndexPath) {
        
        collectionView.deselectItemAtIndexPath(indexPath, animated: true)
        
        let item = items[indexPath.row]
        item.action?.execute()
    }
}

