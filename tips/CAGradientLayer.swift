//
//  CAGradientLayer.swift
//  tips
//
//  Created by Tasfia Addrita on 12/4/15.
//  Copyright © 2015 Tasfia Addrita. All rights reserved.
//

import UIKit

extension CAGradientLayer {
    
    func purpleToBlue() -> CAGradientLayer {
        
        let topColor = UIColor(red: 67/255.0, green: 62/255.0, blue: 160/255.0, alpha: 1)
        let bottomColor = UIColor(red: 30/255.0, green: 168/255.0, blue: 152/255.0, alpha: 1)
        
        let gradientColors: [CGColorRef] = [topColor.CGColor, bottomColor.CGColor]
        let gradientLocations: [Float] = [0.0, 1.0]
        
        let gradientLayer: CAGradientLayer = CAGradientLayer()
        gradientLayer.colors = gradientColors
        gradientLayer.locations = gradientLocations
        
        return gradientLayer
        
    }

}
