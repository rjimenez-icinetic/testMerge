//
//  AppDelegate.swift
//  Sec
//
//  This App has been generated using IBM Mobile UI Builder
//

//
//  StyleConfig.swift
//  $AppName$
//
//  Created by Víctor Jordán Rosado on 29/6/16.
//  Copyright © 2016 Icinetic S.L. All rights reserved.
//

import CoreGraphics

enum Fonts {
    
    static let family = "Helvetica Neue"
    
    enum Sizes {
        
        static let small:CGFloat = 13
        static let medium:CGFloat = 15
        static let large:CGFloat = 18
    }
}

enum Colors {
    
    static let background = 0x2d3f49 
    static let foreground = 0xffffff 
    static let toolbarBackground = 0x4178be 
    static let toolbarText = 0xdfe6eb
    static let error = 0xd9534f
    
    enum Alphas {
        
        static let selected:CGFloat = 0.1
        static let disabled:CGFloat = 0.2
        static let overlay:CGFloat = 0.4
        static let label:CGFloat = 0.6
    }
}

enum Dimens {
    
    static let rowHeight:CGFloat = 66.0
    
    enum Margins {
        
        static let none:CGFloat = 0
        static let small:CGFloat = 4
        static let medium:CGFloat = 8
        static let large:CGFloat = 16
		static let xlarge:CGFloat = 32
    }
    
    enum Sizes {
        
        static let none:CGFloat = 0
        static let border:CGFloat = 1
        static let small:CGFloat = 25
        static let medium:CGFloat = 32
        static let large:CGFloat = 64
        static let toolbar:CGFloat = 44
    }
}

enum Images {
    
	static let logo = "logoApp"
    static let placeHolder = "placeHolder"
    static let noImage = "noImage"
    
    // Action icons
    static let email = "email"
    static let location = "location"
    static let phone = "phone"
    static let url = "url"
    
	// Behavior icons
    static let filter = "filter"
	
    // Icons
    static let userLocation = "userLocation"
    static let arrow = "arrow"
	static let navMenu = "navMenu"
	static let logout = "logout"
}
