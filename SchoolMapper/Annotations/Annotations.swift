//  Copyright © 2018 Matthew Jortberg. All rights reserved.

import UIKit
import MapKit

enum annotationType: String { //removed Int
    case destination = "destination"
    case moving_downstairs
    case moving_upstairs
    //case starting
    
    func image() -> UIImage {
        switch self {
        case .destination:
            return #imageLiteral(resourceName: "destination_icon")
        case .moving_downstairs:
            return #imageLiteral(resourceName: "down_stairs")
        case .moving_upstairs:
            return #imageLiteral(resourceName: "up_stairs")
        //case .starting:
            //return #imageLiteral(resourceName: "start_arrow")
        }
    }
}

class Annotations: NSObject, MKAnnotation {
    var coordinate: CLLocationCoordinate2D
    var title: String?
    //var subtitle: String?
    var type: annotationType
    
    init(coordinate: CLLocationCoordinate2D, title: String, /*subtitle: String, */type: annotationType) {
        self.coordinate = coordinate
        self.title = title
        //self.subtitle = subtitle
        self.type = type
        
    }
}
