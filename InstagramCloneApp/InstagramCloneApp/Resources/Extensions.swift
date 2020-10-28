//
//  Extensions.swift
//  InstagramCloneApp
//
//  Created by Jonathan Shoemaker on 8/30/20.
//  Copyright © 2020 Jonathan Shoemaker. All rights reserved.
//

import Foundation
import UIKit

extension UIView {
    
    public var width: CGFloat {
        return frame.size.width
    }
    
    public var height: CGFloat {
        return frame.size.height
    }
    
    public var top: CGFloat {
        return frame.origin.y
    }
    
    public var bottom: CGFloat {
        return frame.origin.y + frame.size.height
    }
    
    public var left: CGFloat {
        return frame.origin.x
    }
    
    public var right: CGFloat {
        return frame.origin.x + frame.size.width
    }
}

extension String {
    //to call for any string in database, "." arent allowed, so need to convert
    func safeDatabaseKey() -> String {
       return self.replacingOccurrences(of: ".", with: "-").replacingOccurrences(of: "@", with: "-")
    }
}
